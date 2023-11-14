import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

abstract class CommonInputMasks {
  static final cpfFormatter = MaskTextInputFormatter(
      mask: "###.###.###-##",
      filter: {
        "#" : RegExp(r'[0-9]'),
      }
  );

  static final phoneFormatter = MaskTextInputFormatter(
      mask: "(##) #####-####",
      filter: {
        "#" : RegExp(r'[0-9]'),
      }
  );
}