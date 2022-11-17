import 'package:flutter/material.dart';
import 'package:spotify_redesign/widgets/mode_widget.dart';
import 'package:spotify_redesign/widgets/onboarding_content.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingWidget(
        text1: 'Choose Mode',
        buttonText: 'Continue',
        onPressed: () {},
        backgroundImage:
            'assets/images/wp5809281-billie-eilish-green-hair-wallpapers 1.png',
        widget: SizedBox(
          height: 180,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              ModeWidget(
                imageUrl: 'assets/icons/Vector.png',
                text: 'Dark Mode',
              ),
              ModeWidget(
                imageUrl: 'assets/icons/Vector1.png',
                text: 'Light Mode',
              )
            ],
          ),
        ),
      ),
    );
  }
}
