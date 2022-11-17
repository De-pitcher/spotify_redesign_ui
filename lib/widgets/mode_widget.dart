import 'package:flutter/material.dart';

class ModeWidget extends StatelessWidget {
  final String imageUrl;
  final String text;
  const ModeWidget({
    Key? key,
    required this.imageUrl,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 73,
            width: 73,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Image.asset(imageUrl),
          ),
          Text(
            text,
            style: const TextStyle(
              fontFamily: 'Satoshi',
              fontWeight: FontWeight.w500,
              fontSize: 17,
              color: Color(0XFFDADADA),
            ),
          ),
        ],
      ),
    );
  }
}
