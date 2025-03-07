

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intern/core%20/core.dart';
import 'package:flutter_intern/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_intern/presentation/auth/pages/register_page.dart';
import 'package:flutter_intern/presentation/home/view/homepage.dart';

import '../../../core /assets/assets.gen.dart';
import '../../../core /components/custom_text_field.dart';
import '../../../core /components/spaces.dart';
import '../../../core /constants/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isObscured = true;
  FirebaseAuth auth = FirebaseAuth.instance;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1849A9),
      body: Stack(
        children: [
          SizedBox(
            height: 250.0,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: Center(
                child: Image.asset(
                  'assets/splash.png',
                  width: 200.0,
                  height: 200.0,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SingleChildScrollView(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(28.0)),
                child: ColoredBox(
                  color: AppColors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18.0, vertical: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Login ',
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                            color: AppColors.black,
                          ),
                        ),
                        const SpaceHeight(24.0),
                        const Text(
                          'Masukkan email dan password anda untuk melanjutkan masuk ke dalam aplikasi',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: AppColors.gray3,
                          ),
                        ),
                        const SpaceHeight(14.0),
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
                        const SpaceHeight(18.0),
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
                        const SpaceHeight(33.0),
                        BlocConsumer<LoginBloc, LoginState>(
                          listener: (context, state) {
                            state.maybeWhen(
                              orElse: () {},
                              success: (data) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Login successful'),
                                    backgroundColor: AppColors.primary,
                                  ),
                                );
                                context.pushReplacement(const Homepage());
                              },
                              error: (error) {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(error),
                                    backgroundColor: Color(0xff1849A9)
                                  ),
                                );
                              },
                            );
                          },
                          builder: (context, state) {
                            final isLoading = state.maybeWhen(
                                orElse: () => false, loading: () => true);
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
                                  : Text('Login', style: TextStyle(fontSize: 16.0,
                                          fontWeight: FontWeight.w600,color: isLoading ? Colors.grey : Colors.white)),
                              onPressed: isLoading
                                  ? null
                                  : () => context.read<LoginBloc>().add(
                                        LoginEvent.loginWithEmailAndPassword(
                                          emailController.text,
                                          passwordController.text,
                                        ),
                                      ),
                            );
                          },
                        ),
                        const SpaceHeight(16.0),
                        Center(
                          child: Text.rich(
                            TextSpan(
                              text: 'Belum memiliki akun? ',
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: AppColors.gray3,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Daftar',
                                  style: const TextStyle(
                                    color: Color(0xff1849A9),
                                    fontWeight: FontWeight.bold
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      context.push(const RegisterPage());
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SpaceHeight(16.0),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
