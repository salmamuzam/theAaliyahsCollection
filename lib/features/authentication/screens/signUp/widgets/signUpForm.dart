import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/login/login.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';
import 'package:the_aaliyahs_collection/utils/validators/validator.dart';

/// This widget is the signup form used in the SignUp screen.
/// It includes fields for first name, last name, email, password, and a Sign Up button.
class AaliyahSignUpForm extends StatefulWidget {
  const AaliyahSignUpForm({super.key});

  @override
  State<AaliyahSignUpForm> createState() => _AaliyahSignUpFormState();
}

class _AaliyahSignUpFormState extends State<AaliyahSignUpForm> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          // First & Last Name Row
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "First Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: AaliyahValidator.validateFirstName,
                ),
              ),
              const SizedBox(width: AaliyahSizes.spaceBtwInputFields),
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                  validator: AaliyahValidator.validateLastName,
                ),
              ),
            ],
          ),
          const SizedBox(height: AaliyahSizes.spaceBtwInputFields),

          // Email Input
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              labelText: "Email Address",
              prefixIcon: Icon(Icons.email),
            ),
            validator: AaliyahValidator.validateEmail,
          ),
          const SizedBox(height: AaliyahSizes.spaceBtwInputFields),

          // Password Input
          TextFormField(
            controller: _passwordController,
            obscureText: _obscurePassword,
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.password),
              labelText: "Password",
              suffixIcon: IconButton(
                icon: Icon(
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
                ),
                onPressed: () {
                  setState(() {
                    _obscurePassword = !_obscurePassword;
                  });
                },
              ),
            ),
            validator: AaliyahValidator.validatePassword,
          ),
          const SizedBox(height: AaliyahSizes.spaceBtwSections),

          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  // Navigate to LoginScreen after successful signup
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                }
              },
              child: const Text("Sign Up"),
            ),
          ),

          const SizedBox(height: AaliyahSizes.spaceBtwItems),

          // Optional: Sign In Button
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: const Text("Sign In"),
            ),
          ),
        ],
      ),
    );
  }
}
