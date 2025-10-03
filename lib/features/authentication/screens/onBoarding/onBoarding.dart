import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/features/authentication/screens/login/login.dart';
import 'package:the_aaliyahs_collection/utils/constants/imageStrings.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';
import 'package:the_aaliyahs_collection/utils/device/deviceUtility.dart';
import 'package:the_aaliyahs_collection/utils/helpers/helperFunctions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AaliyahHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AaliyahSizes.defaultSpace),
        child: Padding(
          padding: const EdgeInsets.all(AaliyahSizes.defaultSpace),
          child: Column(
            children: [
              Image(
                width: AaliyahDeviceUtils.getScreenWidth(context) * 0.5,
                height: AaliyahDeviceUtils.getScreenHeight(context) * 0.3,
                image: AssetImage(
                  dark ? AaliyahImages.lightAppLogo : AaliyahImages.darkAppLogo,
                ),
              ),
              Text(
                "Aaliyah's Collection",
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: AaliyahSizes.spaceBtwItems),
              Text(
                "Welcome Back!",
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              // Sign In Button
              const SizedBox(height: AaliyahSizes.spaceBtwSections),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
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
              // Sign Up Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text("Sign Up"),
                ),
              ),
              const SizedBox(height: AaliyahSizes.spaceBtwSections),
            ],
          ),
        ),
      ),
    );
  }
}
