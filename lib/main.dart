import 'package:flutter/material.dart';
import 'package:sahabul_azkar/screens/bookmarks/bookmarks_screen.dart';

import 'utils/app_colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final FocusScopeNode currentScope = FocusScope.of(context);
        if (!currentScope.hasPrimaryFocus && currentScope.hasFocus) {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme(
              primary: AppColors.primary,
              secondary: AppColors.primary,
              surface: AppColors.primary,
              background: AppColors.backgroundWhite,
              error: AppColors.error,
              onPrimary: AppColors.primary,
              onSecondary: AppColors.primary,
              onSurface: AppColors.primary,
              onBackground: AppColors.backgroundWhite,
              onError: AppColors.error,
              brightness: Theme.of(context).brightness),
          fontFamily: 'roboto',
        ),
        home: const BookmarksScreen(),
        //home: const PropheticSayingsScreen(),
        //home: const PropheticSayingsDetailScreen(),
        //home: const TasbihCounterScreen(),
        //home: const HomeScreen(),
        //home: const LoginScreen(),
        //home: const SplashScreen(),
        //home: const MyHomePage(title: 'Flutter Demos Home Page'),
      ),
    );
  }
}
