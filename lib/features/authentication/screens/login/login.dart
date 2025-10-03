import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/common/styles/spacingStyles.dart';
import 'package:the_aaliyahs_collection/utils/constants/imageStrings.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';
import 'package:the_aaliyahs_collection/utils/helpers/helperFunctions.dart';
//import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AaliyahHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AaliyahSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo, Title, Subtitles
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                      dark
                          ? AaliyahImages.lightAppLogo
                          : AaliyahImages.darkAppLogo,
                    ),
                  ),
                  Text(
                    "Welcome back!",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const SizedBox(height: AaliyahSizes.sm),
                  Text(
                    "Welcome back!",
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),

              // Form
              Form(
                child: Column(
                  children: [
                    //Email
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: "Email",
                      ),
                    ),
                    const SizedBox(height: AaliyahSizes.spaceBtwInputFields),

                    //Password
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password),
                        labelText: "Password",
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                    const SizedBox(
                      height: AaliyahSizes.spaceBtwInputFields / 2,
                    ),

                    //Sign In Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Sign In"),
                      ),
                    ),

                    // Create an Account
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text("Sign Up"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
