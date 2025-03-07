import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intern/core%20/components/buttons.dart';
import 'package:flutter_intern/core%20/constants/colors.dart';
import 'package:flutter_intern/datasource/firebase_firestore_remote_datasource.dart';
import 'package:flutter_intern/presentation/auth/pages/login_page.dart';
import 'package:flutter_intern/presentation/home/data_user_bloc/data_user_bloc.dart';

import '../../datasource/user_data_model.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _noHpController = TextEditingController();
  final TextEditingController _alamatController = TextEditingController();
  final TextEditingController _roleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchUserData();
  }

  void _fetchUserData() async {
    final user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      context
          .read<DataUserBloc>()
          .add(DataUserEvent.fetchDataUser(user.email!));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Data User"),
        backgroundColor: Color(0xff1849A9),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xff1849A9)),
              child: Center(
                child: Text("Menu",
                    style: TextStyle(color: Colors.white, fontSize: 24)),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text("Logout"),
              onTap: () async {
                await FirebaseFirestoreRemoteDatasource.instance
                    .removeAuthToken();
                await FirebaseAuth.instance.signOut();
                if (mounted) {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                }
                context.read<DataUserBloc>().add(DataUserEvent.dispose());
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              BlocBuilder<DataUserBloc, DataUserState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (message) => ListTile(
                      title: Text(message),
                      leading: const Icon(Icons.error, color: Colors.red),
                    ),
                    loaded: (users) => Expanded(
                      // 🔥 Tambahkan Expanded agar ListView mengisi ruang yang tersedia
                      child: users.isEmpty
                          ? const Center(child: Text("Tidak ada data"))
                          : ListView.builder(
                              itemCount: users.length,
                              itemBuilder: (context, index) {
                                final user = users[index];
                                return _buildUserCard(user);
                              },
                            ),
                    ),
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
          Positioned(
            right: 16,
            bottom: 20,
            child: FloatingActionButton(
              onPressed: _showBottomSheet,
              backgroundColor: Color(0xff1849A9),
              child: const Icon(Icons.add, size: 32, color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  void _resetFormAndCloseModal(BuildContext context) {
    Navigator.pop(context);
    _namaController.clear();
    _noHpController.clear();
    _alamatController.clear();
    _roleController.clear();
  }

  void _updateUser(
      String documentId, String nama, String noHp, String alamat, String role) {
    final user = FirebaseAuth.instance.currentUser;
    if (user == null) return;
    context.read<DataUserBloc>().add(
          DataUserEvent.updateDataUser(
            user.email!,
            documentId,
            {
              'nama': nama,
              'noHp': noHp,
              'alamat': alamat,
              'role': role,
            },
          ),
        );
  }

  void _showEditBottomSheet(String documentId, UserData user) {
    final TextEditingController namaController =
        TextEditingController(text: user.nama);
    final TextEditingController noHpController =
        TextEditingController(text: user.noHp);
    final TextEditingController alamatController =
        TextEditingController(text: user.alamat);
    final TextEditingController roleController =
        TextEditingController(text: user.role);

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Edit Data User",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              _buildTextField(namaController, "Nama"),
              _buildTextField(noHpController, "Nomor HP"),
              _buildTextField(alamatController, "Alamat"),
              _buildTextField(roleController, "Role"),
              const SizedBox(height: 16),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button.outlined(
                      onPressed: () => Navigator.pop(context),
                      label: Text(
                        "Batal",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff1849A9)),
                      )),
                  SizedBox(
                    height: 12,
                  ),
                  BlocListener<DataUserBloc, DataUserState>(
                    listener: (context, state) {
                      if (!mounted) return; // ✅ Perbaikan kondisi
                      state.maybeWhen(
                        orElse: () {},
                        success: (message) {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text("berhasil diupdate"),
                              backgroundColor: AppColors.primary,
                            ),
                          );
                          // ✅ Ambil data terbaru setelah sukses menambahkan user
                          final user = FirebaseAuth.instance.currentUser;
                          if (user != null) {
                            context
                                .read<DataUserBloc>()
                                .add(DataUserEvent.fetchDataUser(user.email!));
                          }
                        },
                      );
                    },
                    child: BlocBuilder<DataUserBloc, DataUserState>(
                      builder: (context, state) {
                        final isLoading = state.maybeWhen(
                            orElse: () => false, loading: () => true);
                        return state.maybeWhen(
                          orElse: () {
                            return Button.filled(
                                color: Color(0xff1849A9),
                                label: isLoading
                                    ? const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2.0,
                                          color: Colors.white,
                                        ),
                                      )
                                    : Text('Edit Data',
                                        style: TextStyle(
                                            color: isLoading
                                                ? Colors.grey
                                                : Colors.white)),
                                onPressed: isLoading
                                    ? null
                                    : () {
                                        final user =
                                            FirebaseAuth.instance.currentUser;
                                        if (user == null) {
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(
                                            const SnackBar(
                                                content:
                                                    Text("User belum login!")),
                                          );
                                          return;
                                        }
                                        _updateUser(
                                            documentId,
                                            namaController.text,
                                            noHpController.text,
                                            alamatController.text,
                                            roleController.text);
                                      });
                          },
                        );
                      },
                    ),
                  ),
                  // Button.filled(
                  //   onPressed: () {
                  //     _updateUser(
                  //         documentId,
                  //         namaController.text,
                  //         noHpController.text,
                  //         alamatController.text,
                  //         roleController.text);
                  //   },
                  //   label: const Text(
                  //     "Edit",
                  //     style: TextStyle(
                  //       fontSize: 16.0,
                  //       fontWeight: FontWeight.w600,
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: 16,
            left: 16,
            right: 16,
            bottom: MediaQuery.of(context).viewInsets.bottom + 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Tambah Data User",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              const SizedBox(height: 16),
              _buildTextField(_namaController, "Nama"),
              _buildTextField(_noHpController, "Nomor HP"),
              _buildTextField(_alamatController, "Alamat"),
              const SizedBox(height: 16),
              BlocListener<DataUserBloc, DataUserState>(
                listener: (context, state) {
                  if (!mounted) return; // ✅ Perbaikan kondisi
                  state.maybeWhen(
                    orElse: () {},
                    success: (message) {
                      _resetFormAndCloseModal(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: AppColors.primary,
                        ),
                      );
                      // ✅ Ambil data terbaru setelah sukses menambahkan user
                      final user = FirebaseAuth.instance.currentUser;
                      if (user != null) {
                        context
                            .read<DataUserBloc>()
                            .add(DataUserEvent.fetchDataUser(user.email!));
                      }
                    },
                    error: (message) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Register failed: $message'),
                          backgroundColor: AppColors.red,
                        ),
                      );
                    },
                  );
                },
                child: BlocBuilder<DataUserBloc, DataUserState>(
                  builder: (context, state) {
                    final isLoading = state.maybeWhen(
                        orElse: () => false, loading: () => true);

                    return state.maybeWhen(
                      orElse: () {
                        return Button.filled(
                          label: isLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.0,
                                    color: Colors.white,
                                  ),
                                )
                              : Text('simpan',
                                  style: TextStyle(
                                      color: isLoading
                                          ? Colors.grey
                                          : Colors.white)),
                          onPressed: isLoading
                              ? null
                              : () {
                                  final user =
                                      FirebaseAuth.instance.currentUser;

                                  if (user == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("User belum login!")),
                                    );
                                    return;
                                  }
                                  context.read<DataUserBloc>().add(
                                        DataUserEvent.addDataUser(
                                          UserData(
                                            nama: _namaController.text,
                                            email: user.email!,
                                            noHp: _noHpController.text,
                                            alamat: _alamatController.text,
                                            role: "user",
                                          ),
                                        ),
                                      );
                                },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showMoreOptions(BuildContext context, String documentId) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Pilihan Lainnya",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close_sharp),
                    onPressed: () =>
                        Navigator.pop(context), // 🔥 Tutup Bottom Sheet
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.delete, color: Colors.red),
                title: const Text("Hapus Data"),
                onTap: () {
                  Navigator.pop(context); // 🔥 Tutup Bottom Sheet
                  _showDeleteConfirmation(
                      context, documentId); // 🔥 Munculkan dialog konfirmasi
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void _showDeleteConfirmation(BuildContext context, String documentId) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Konfirmasi"),
          content: const Text("Apakah Anda yakin ingin menghapus alamat ini?"),
          actions: [
            Button.outlined(
                onPressed: () => Navigator.pop(context),
                label: Text(
                  "Batal",
                  style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff1849A9)),
                )),
            SizedBox(
              height: 12,
            ),
            BlocListener<DataUserBloc, DataUserState>(
              listener: (context, state) {
                if (!mounted) return; // ✅ Perbaikan kondisi
                state.maybeWhen(
                  orElse: () {},
                  success: (message) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("berhasil dihapus"),
                        backgroundColor: AppColors.primary,
                      ),
                    );
                    // ✅ Ambil data terbaru setelah sukses menambahkan user
                    final user = FirebaseAuth.instance.currentUser;
                    if (user != null) {
                      context
                          .read<DataUserBloc>()
                          .add(DataUserEvent.fetchDataUser(user.email!));
                    }
                  },
                );
              },
              child: BlocBuilder<DataUserBloc, DataUserState>(
                builder: (context, state) {
                  final isLoading =
                      state.maybeWhen(orElse: () => false, loading: () => true);
                  return state.maybeWhen(
                    orElse: () {
                      return Button.filled(
                          color: Colors.red,
                          label: isLoading
                              ? const SizedBox(
                                  width: 20,
                                  height: 20,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 2.0,
                                    color: Colors.white,
                                  ),
                                )
                              : Text('Hapus',
                                  style: TextStyle(
                                      color: isLoading
                                          ? Colors.grey
                                          : Colors.white)),
                          onPressed: isLoading
                              ? null
                              : () {
                                  final user =
                                      FirebaseAuth.instance.currentUser;
                                  if (user == null) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text("User belum login!")),
                                    );
                                    return;
                                  }
                                  context
                                      .read<DataUserBloc>()
                                      .add(DataUserEvent.deleteDataUser(
                                        user.email!,
                                        documentId,
                                      ));
                                });
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildTextField(TextEditingController controller, String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
        ),
      ),
    );
  }

  Widget _buildUserCard(UserData user) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 2,
        child: Column(
          children: [
            ListTile(
              leading:
                  const Icon(Icons.person, color: Color(0xff1849A9), size: 40),
              title: Text(user.nama,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold)),
              subtitle: Text(user.alamat),
              trailing: Text(user.role,
                  style: const TextStyle(
                      color: Color(0xff1849A9), fontWeight: FontWeight.bold)),
              onTap: () {},
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 8.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 4,
                    child: OutlinedButton(
                      onPressed: () {
                        _showEditBottomSheet(user.id, user);
                      },
                      child: const Text(
                        "Edit",
                        style: TextStyle(color: Color(0xff1849A9)),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8), // 🔥 Beri jarak antar tombol
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        _showMoreOptions(context, user.id);
                      },
                      child: const Icon(Icons.more_horiz,
                          color: Color(0xff1849A9)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _namaController.dispose();
    _noHpController.dispose();
    _alamatController.dispose();
    _roleController.dispose();
    super.dispose();
  }
}
