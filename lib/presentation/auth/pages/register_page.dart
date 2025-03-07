import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_intern/core%20/core.dart';
import 'package:flutter_intern/presentation/auth/regist/regist_bloc.dart';

import 'package:image_picker/image_picker.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final alamatController = TextEditingController();
  final roleController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscured = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    nameController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1849A9),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 18.0, vertical: 30.0),
                margin: const EdgeInsets.only(top: 50.0),
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(28.0)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Register',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blue,
                      ),
                    ),
                    const SpaceHeight(28.0),
                    CustomTextField(
                      controller: nameController,
                      label: 'Nama',
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(
                        Icons.person,
                        color: AppColors.blue,
                      ),
                    ),
                    const SpaceHeight(18.0),
                    CustomTextField(
                      controller: emailController,
                      label: 'Email',
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(
                        Icons.email,
                        color: AppColors.blue,
                      ),
                    ),
                    const SpaceHeight(14.0),
                    CustomTextField(
                      controller: phoneController,
                      label: 'No Handphone',
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(
                        Icons.phone,
                        color: AppColors.blue,
                      ),
                    ),
                    const SpaceHeight(14.0),
                    CustomTextField(
                      controller: alamatController,
                      label: 'Alamat',
                      textInputAction: TextInputAction.next,
                      prefixIcon: const Icon(
                        Icons.place,
                        color: AppColors.blue,
                      ),
                    ),
                    const SpaceHeight(14.0),
                    CustomTextField(
                          controller: passwordController,
                          label: 'Password',
                          obscureText: _isObscured,
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isObscured =
                                      !_isObscured; // Toggle status obscureText
                                });
                              },
                              icon: Icon(
                                _isObscured
                                    ? Icons.remove_red_eye
                                    : Icons.remove_red_eye_outlined,
                              )),
                          prefixIcon: const Icon(
                            Icons.key,
                            color: AppColors.blue,
                          ),
                        ),
                    const SpaceHeight(18.0),
                    const SpaceHeight(33.0),
                    BlocListener<RegistBloc, RegistState>(
                      listener: (context, state) {
                        state.maybeWhen(
                          orElse: () {},
                          success: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Register success'),
                                backgroundColor: AppColors.primary,
                              ),
                            );
                            context.pushReplacement(const LoginPage());
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
                      child: BlocBuilder<RegistBloc, RegistState>(
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
                                    : Text('Register',
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w600,
                                            color: isLoading
                                                ? Colors.grey
                                                : Colors.white)),
                                onPressed: isLoading
                                    ? null
                                    : () => context
                                        .read<RegistBloc>()
                                        .add(RegistEvent.register(
                                          name: nameController.text,
                                          email: emailController.text,
                                          noHp: phoneController.text,
                                          alamat: alamatController.text,
                                          password: passwordController.text,
                                          role: 'user',
                                        )),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    const SpaceHeight(16.0),
                    Center(
                      child: Text.rich(
                        TextSpan(
                          text: 'Sudah memiliki akun? ',
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: AppColors.gray3,
                            fontWeight: FontWeight.normal
                          ),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: const TextStyle(
                                color: Color(0xff1849A9),
                                fontWeight: FontWeight.bold
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => context.pop(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
