import 'package:flutter/material.dart';
import 'package:flutter_intern/datasource/authlocal_datasource.dart';
import 'package:flutter_intern/presentation/home/view/homepage.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../core /core.dart';

import 'login_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<String?>(
        future: Future.delayed(
          const Duration(milliseconds: 2000),
          () => AuthlocalDatasource.instance.getAuthToken(),
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print("Token dari FutureBuilder: ${snapshot.data}");
            if (snapshot.data != null && snapshot.data!.isNotEmpty) {
              return const Homepage();
            } else {
              return const LoginPage();
            }
          }
          return Scaffold(
            backgroundColor: Color(0xff1849A9),
            body: Padding(
              padding: const EdgeInsets.all(48.0),
              child: Center(
                child: Image.asset(
                  'assets/splash.png',
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ),
            bottomNavigationBar: SizedBox(
              height: 100.0,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Data Pribadi',
                  style: GoogleFonts.poppins(
                    fontSize: 24.0,
                    color: AppColors.white,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
