import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/onBoarding/onBoarding.dart';
import 'package:the_aaliyahs_collection/utils/theme/theme.dart';

/// Entry point of the Flutter App
void main() {
  // runApp launches the app and attaches it to the screen
  runApp(const App());
}

/// Root widget of the app
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // removes the debug banner
      themeMode: ThemeMode.system,       // automatically switch between light/dark based on device settings
      theme: AaliyahAppTheme.lightTheme, // light mode theme
      darkTheme: AaliyahAppTheme.darkTheme, // dark mode theme
      home: const OnBoardingScreen(),     // first screen displayed when app launches
    );
  }
}
