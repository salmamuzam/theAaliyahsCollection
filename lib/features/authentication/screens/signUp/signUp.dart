import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/signUp/widgets/signUpForm.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';

/// This is the SignUp screen that shows the title and signup form.
/// It combines a header text with the form to create a full signup page.
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar at the top (default style for now)
      appBar: AppBar(),

      // Main content of the screen
      body: SingleChildScrollView(
        // Makes the screen scrollable to prevent overflow on small devices
        child: Padding(
          padding: EdgeInsets.all(AaliyahSizes.defaultSpace),
          // Outer padding so content doesn't touch screen edges
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // =========================
              // Title Section
              // =========================
              Text(
                "Create Your Account", // Big header text
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: AaliyahSizes.spaceBtwItems),
              // Small space between title and form

              // =========================
              // Form Section
              // =========================
              AaliyahSignUpForm(), 
              // This is the form we built earlier with first name, last name, email, password, and Sign Up button
            ],
          ),
        ),
      ),
    );
  }
}
