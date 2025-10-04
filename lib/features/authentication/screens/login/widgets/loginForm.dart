import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/login/login.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/signUp/signUp.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';

/// This widget is the login form that I can use in my login screen.
/// It contains email, password, and buttons for Sign In and Sign Up.
class AaliyahLoginForm extends StatelessWidget {
  const AaliyahLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      // Adding padding around the form so it's not touching screen edges
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AaliyahSizes.spaceBtwSections, // vertical spacing above and below
        ),
        child: Column(
          children: [
            // Email Input Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email), // small email icon on the left
                labelText: "Email", // label that appears inside the field
              ),
            ),

            const SizedBox(height: AaliyahSizes.spaceBtwInputFields),
            // A small space between email and password fields

            // Password Input Field
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password), // small lock icon
                labelText: "Password",            // label inside password field
                suffixIcon: Icon(Icons.visibility_off), // icon to show/hide password (just visual here)
              ),
            ),

            const SizedBox(height: AaliyahSizes.spaceBtwInputFields),
            // Space between password and Sign In button

            // Sign In Button
            SizedBox(
              width: double.infinity, // button takes full width
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to LoginScreen when pressed
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: Text("Sign In"),
              ),
            ),

            const SizedBox(height: AaliyahSizes.spaceBtwItems),
            // Space between Sign In and Sign Up button

            // Sign Up Button
            SizedBox(
              width: double.infinity, // button takes full width
              child: OutlinedButton(
                onPressed: () {
                  // Navigate to SignUpScreen when pressed
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
