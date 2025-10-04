import 'package:flutter/material.dart';
import 'package:the_aaliyahs_collection/utils/constants/imageStrings.dart';
import 'package:the_aaliyahs_collection/utils/constants/sizes.dart';

/// This widget is the header for the login screen.
/// It shows the app logo and a welcome message at the top of the screen.
class AaliyahLoginHeader extends StatelessWidget {
  const AaliyahLoginHeader({super.key, required this.dark});

  /// `dark` decides which version of the logo to show:
  /// true = light logo (for dark background)
  /// false = dark logo (for light background)
  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center, // center everything horizontally
      children: [
        // App logo at the top
        Image(
          height: 150, // set logo height to 150 pixels
          image: AssetImage(
            dark ? AaliyahImages.lightAppLogo : AaliyahImages.darkAppLogo,
            // Choose logo based on `dark` value
          ),
        ),

        // Welcome message
        Text(
          "Welcome back!",
          style: Theme.of(context).textTheme.headlineMedium, // use app theme for styling
          textAlign: TextAlign.center, // center text horizontally
        ),

        const SizedBox(height: AaliyahSizes.sm), // small space between text lines

        // Subheading/description
        Text(
          "Discover Limitless Choices and Unmatched\nConvenience",
          style: Theme.of(context).textTheme.bodyMedium, // smaller text style
          textAlign: TextAlign.center, // center text horizontally
        ),
      ],
    );
  }
}
