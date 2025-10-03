import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/onBoarding/onBoarding.dart';
import 'package:the_aaliyahs_collection/utils/theme/theme.dart';

// Entry point of Flutter App

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AaliyahAppTheme.lightTheme,
      darkTheme: AaliyahAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}


