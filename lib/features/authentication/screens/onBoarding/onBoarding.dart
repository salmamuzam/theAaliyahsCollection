import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/login/login.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/signUp/signUp.dart';
import 'package:the_aaliyahs_collection/utils/constants/imageStrings.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';
import 'package:the_aaliyahs_collection/utils/device/deviceUtility.dart';
import 'package:the_aaliyahs_collection/utils/helpers/helperFunctions.dart';

/// This is the onboarding screen that appears when the app opens.
/// It shows the app logo, welcome text, and buttons for Sign In and Sign Up.
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Check if the app is in dark mode
    final dark = AaliyahHelperFunctions.isDarkMode(context);

    return Scaffold(
      // Scaffold provides basic screen structure
      body: Padding(
        // Outer padding so content doesn't touch screen edges
        padding: EdgeInsets.all(AaliyahSizes.defaultSpace),
        child: Padding(
          // Inner padding for extra spacing (nested padding)
          padding: const EdgeInsets.all(AaliyahSizes.defaultSpace),
          child: Column(
            children: [
              // App Logo
              Image(
                width: AaliyahDeviceUtils.getScreenWidth(context) * 0.5, // half of screen width
                height: AaliyahDeviceUtils.getScreenHeight(context) * 0.3, // 30% of screen height
                image: AssetImage(
                  dark ? AaliyahImages.lightAppLogo : AaliyahImages.darkAppLogo,
                  // Choose logo based on dark mode
                ),
              ),

              // App Title
              Text(
                "Aaliyah's Collection",
                style: Theme.of(context).textTheme.headlineMedium, // big text
                textAlign: TextAlign.center, // center horizontally
              ),

              const SizedBox(height: AaliyahSizes.spaceBtwItems), // small space

              // Welcome Message
              Text(
                "Welcome Back!",
                style: Theme.of(context).textTheme.bodyLarge, // normal body text
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: AaliyahSizes.spaceBtwSections), // bigger space before buttons

              // Sign In Button
              SizedBox(
                width: double.infinity, // button fills screen width
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to LoginScreen and replace this screen
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

              const SizedBox(height: AaliyahSizes.spaceBtwItems), // small space between buttons

              // Sign Up Button
              SizedBox(
                width: double.infinity, // button fills screen width
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to SignUpScreen and replace this screen
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

              const SizedBox(height: AaliyahSizes.spaceBtwSections), // bottom spacing
            ],
          ),
        ),
      ),
    );
  }
}
