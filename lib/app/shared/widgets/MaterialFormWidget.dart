import 'package:flutter/material.dart';

class MaterialFormWidgets {
  static Widget textField({
    required String label,
    required TextInputType inputType,
    required TextEditingController controller,
    bool isPassword = false,
    required Function callback,
  }) {
    return Padding(
      padding: EdgeInsets.all(4),
      child: TextField(
        keyboardAppearance: Brightness.dark,
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
        ),
        obscureText: isPassword,
        keyboardType: inputType,
        //onChanged: callback,
      ),
    );
  }

  static Widget checkbox(String label) {
    return Row(
      children: <Widget>[
        Checkbox(
          value: false,
          onChanged: (val) {},
        ),
        Text(label),
      ],
    );
  }
}