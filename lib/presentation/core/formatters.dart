import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomLengthLimitingTextInputFormatter extends TextInputFormatter {
  final int maxLength;

  CustomLengthLimitingTextInputFormatter(this.maxLength);

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    final newText = newValue.text;
    final newCharacterCount = newText.characters.length;

    if (newCharacterCount <= maxLength) {
      return newValue;
    } else {
      final newCharacters = newText.characters.take(maxLength);
      final newTextValue = newCharacters.string;
      return TextEditingValue(
        text: newTextValue,
        selection: TextSelection.collapsed(offset: newTextValue.length),
      );
    }
  }
}