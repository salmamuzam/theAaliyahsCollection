import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/common/styles/spacingStyles.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/login/widgets/loginForm.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/login/widgets/loginHeader.dart';
import 'package:the_aaliyahs_collection/utils/helpers/helperFunctions.dart';

/// This is the main login screen that shows the header and form.
/// It combines everything we built: logo, welcome text, email/password fields, and buttons.
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Check if the app is in dark mode
    final dark = AaliyahHelperFunctions.isDarkMode(context);

    return Scaffold(
      // Scaffold gives us a basic page structure (app bar, body, etc.)
      body: SingleChildScrollView(
        // Makes the screen scrollable if content is bigger than screen
        child: Padding(
          padding: AaliyahSpacingStyle.paddingWithAppBarHeight,
          // Use reusable padding so content doesn't touch edges or AppBar
          child: Column(
            children: [
              // Top part: logo, title, subtitle
              AaliyahLoginHeader(dark: dark),

              // Bottom part: form fields and buttons
              AaliyahLoginForm(),
            ],
          ),
        ),
      ),
    );
  }
}
