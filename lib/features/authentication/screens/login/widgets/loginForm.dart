import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/signUp/signUp.dart';
import 'package:the_aaliyahs_collection/features/shops/screens/home/widgets/home.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';
import 'package:the_aaliyahs_collection/utils/validators/validator.dart';

class AaliyahLoginForm extends StatefulWidget {
  const AaliyahLoginForm({super.key});

  @override
  _AaliyahLoginFormState createState() => _AaliyahLoginFormState();
}

class _AaliyahLoginFormState extends State<AaliyahLoginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _obscurePassword = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey, // Assign the form key
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AaliyahSizes.spaceBtwSections,
        ),
        child: Column(
          children: [
            // Email Input Field
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
              ),
              validator: AaliyahValidator.validateEmail,
            ),

            const SizedBox(height: AaliyahSizes.spaceBtwInputFields),

            // Password Input Field
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

            const SizedBox(height: AaliyahSizes.spaceBtwInputFields),

            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // If all fields are valid, navigate to HomeScreen
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  }
                },
                child: const Text("Sign In"),
              ),
            ),

            const SizedBox(height: AaliyahSizes.spaceBtwItems),

            // Sign Up Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SignUpScreen(),
                    ),
                  );
                },
                child: const Text("Sign Up"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
