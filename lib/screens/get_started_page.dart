import 'package:flutter/material.dart';
import 'package:spotify_redesign/screens/choose_mode_page.dart';
import 'package:spotify_redesign/widgets/onboarding_content.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingWidget(
        text1: 'Enjoy Listening to Music',
        buttonText: 'Get Started',
        backgroundImage:
            'assets/images/wp4780558-billie-eilish-glasses-wallpapers 1.png',
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => const ChooseModePage(),
          ),
        ),
        widget: const Text(
          'Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. Sagittis enim \npurus sed phasellus. Cursus ornare id \nscelerisque aliquam.',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w400,
              fontSize: 17,
              color: Color(0xFF797979)),
        ),
      ),
    );
  }
}
