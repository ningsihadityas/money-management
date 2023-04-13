import 'package:flutter/material.dart';

import '../theme.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  ButtonWidget(this.text, this.onTap);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: text == 'Keluar' ? redColor : blackColor,
          ),
          onPressed: onTap,
          child: Text(
            text,
            textAlign: TextAlign.center,
          )),
    );
  }
}
