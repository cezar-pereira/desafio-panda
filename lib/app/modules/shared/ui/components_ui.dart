import 'package:desafio_pandapay/app/modules/shared/ui/theme.dart';
import 'package:flutter/material.dart';

class ComponentsUi {
  smallButton() {}
  mediumButton(
      {@required String text,
      @required Color color,
      @required Color colorText,
      bool border = false}) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(40),
          border: border == true
              ? Border.all(width: 1, color: colorButtonGray)
              : null),
      width: 250,
      height: 50,
      child: Text(
        text,
        style: TextStyle(color: colorText, fontSize: 18),
      ),
    );
  }

  bigButtom() {}

  inputText() {}
  inputTextPhone() {}
  titleBlock() {}
}
