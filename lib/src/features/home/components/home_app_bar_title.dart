import 'package:flutter/material.dart';
import '../../../config/color_palette.dart';

class HomeAppBarTitle extends StatelessWidget {
  const HomeAppBarTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text.rich(
          TextSpan(
              style: const TextStyle(fontSize: 30),
              children: [
                TextSpan(
                    text: "Green",
                    style: TextStyle(
                        color: ColorPalette.swatchColor,
                        fontWeight: FontWeight.bold
                    )
                ),
                TextSpan(
                    text: "grocer",
                    style: TextStyle(
                      color: ColorPalette.contrastColor,
                    )
                )
              ]
          )
      ),
    );
  }
}
