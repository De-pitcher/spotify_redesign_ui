import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_redesign/utils/constants.dart';

class OnboardingWidget extends StatelessWidget {
  final String text1;
  final String buttonText;
  final String backgroundImage;
  final Widget widget;
  final Function()? onPressed;
  const OnboardingWidget({
    Key? key,
    required this.text1,
    required this.buttonText,
    required this.widget,
    required this.backgroundImage,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            backgroundImage,
          ),
          fit: BoxFit.fill,
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/icons/spotify_icon.svg'),
            Column(
              children: [
                Text(
                  text1,
                  style: const TextStyle(
                      fontFamily: 'Satoshi',
                      fontWeight: FontWeight.w700,
                      fontSize: 25,
                      color: Colors.white),
                ),
                const SizedBox(height: 20),
                widget,
                const SizedBox(height: 20),
                SizedBox(
                  width: 329,
                  height: 92,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: greenColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: onPressed,
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                        fontFamily: 'Satoshi',
                        fontWeight: FontWeight.w700,
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
