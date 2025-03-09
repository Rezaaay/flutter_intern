import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_intern/core%20/constants/colors.dart';
import 'package:flutter_intern/datasource/firestore_remote_datasource.dart';
import 'package:flutter_intern/firebase_options.dart';
import 'package:flutter_intern/presentation/auth/bloc/login/login_bloc.dart';
import 'package:flutter_intern/presentation/auth/pages/splash_page.dart';
import 'package:flutter_intern/presentation/auth/bloc/regist/regist_bloc.dart';
import 'package:flutter_intern/presentation/home/bloc/data_user_bloc/data_user_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

final GlobalKey<NavigatorState> globalNavigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
  Future.delayed(const Duration(milliseconds: 100), () {
    while (Navigator.canPop(globalNavigatorKey.currentContext!)) {
      Navigator.pop(globalNavigatorKey.currentContext!);
    }
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginBloc(FirebaseAuth.instance),
        ),
        BlocProvider(
          create: (context) => RegistBloc(FirebaseAuth.instance,
              FirebaseFirestore.instance),
        ),
        BlocProvider(
          create: (context) => DataUserBloc(
            FirestoreRemoteDataSource(FirebaseFirestore.instance)),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          useMaterial3: false,
          colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
          scaffoldBackgroundColor: AppColors.white,
          dividerTheme: const DividerThemeData(color: AppColors.divider),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
          appBarTheme: AppBarTheme(
            color: AppColors.secondary,
            elevation: 0,
            titleTextStyle: GoogleFonts.poppins(
              color: AppColors.white,
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
            iconTheme: const IconThemeData(
              color: AppColors.white,
            ),
            centerTitle: true,
          ),
        ),
        home: const SplashPage(),
      ),
    );
  }
}
