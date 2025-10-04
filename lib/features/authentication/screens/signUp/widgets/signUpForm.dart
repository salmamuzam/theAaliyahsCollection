import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/signUp/signUp.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';

/// This widget is the signup form used in the SignUp screen.
/// It includes fields for first name, last name, email, password, and a Sign Up button.
class AaliyahSignUpForm extends StatelessWidget {
  const AaliyahSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      // Form groups input fields together (can later add validation)
      child: Column(
        children: [
          // -------------------------
          // First & Last Name Row
          // -------------------------
          Row(
            children: [
              // First Name Input
              Expanded(
                // Expanded makes the field take available space equally
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "First Name", // Label inside the field
                    prefixIcon: Icon(Icons.person), // Small person icon
                  ),
                ),
              ),
              const SizedBox(width: AaliyahSizes.spaceBtwInputFields), 
              // Small space between first and last name fields

              // Last Name Input
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: AaliyahSizes.spaceBtwInputFields), 
          // Space between name row and email field

          // -------------------------
          // Email Input
          // -------------------------
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Email Address",
              prefixIcon: Icon(Icons.email),
            ),
          ),

          const SizedBox(height: AaliyahSizes.spaceBtwInputFields), 
          // Space between email and password

          // -------------------------
          // Password Input
          // -------------------------
          TextFormField(
            obscureText: true, // Hide password characters
            decoration: const InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.password), 
              suffixIcon: Icon(Icons.visibility_off), 
              // This icon could be used to toggle password visibility
            ),
          ),

          const SizedBox(height: AaliyahSizes.spaceBtwSections), 
          // Bigger space before the Sign Up button

          // -------------------------
          // Sign Up Button
          // -------------------------
          SizedBox(
            width: double.infinity, // button takes full width
            child: ElevatedButton(
              onPressed: () {
                // For now, it just navigates to the SignUpScreen (replace with your logic later)
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const SignUpScreen()),
                );
              },
              child: const Text("Sign Up"),
            ),
          ),
        ],
      ),
    );
  }
}
