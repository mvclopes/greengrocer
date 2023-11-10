import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:greengrocer/src/config/color_palette.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    List<AnimatedText> animatedTexts = [
      FadeAnimatedText('Carnes'),
      FadeAnimatedText('Frutas'),
    ];

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text.rich(
          TextSpan(
            style: TextStyle(fontSize: 40),
            children: [
              const TextSpan(
                text: "Green",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                )
              ),
              TextSpan(
                  text: "grocer",
                  style: TextStyle(
                      color: ColorPalette.contrastColor
                  )
              ),
            ]
          ),
        ),

        SizedBox(
          height: 36,
          child: DefaultTextStyle(
            style: const TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            child: AnimatedTextKit(
              pause: Duration.zero,
              repeatForever: true,
              animatedTexts: animatedTexts
            ),
          ),
        ),
      ],
    );
  }
}
