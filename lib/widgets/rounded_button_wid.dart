import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget{
  final String btnName;
  final Widget? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton({
    required this.btnName,
  this.icon,
  this.bgColor = Colors.blue,
  this.textStyle,
  this.callback,
});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: callback,
        child: Row(
        children: [
        if (icon != null)
    Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: icon,
    ),
    Expanded(
    child: Text(
    btnName,
    style: textStyle,
    ),
    ),
    ],
    ),
      style: ElevatedButton.styleFrom(
        primary: bgColor,
        shadowColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(21),
            bottomLeft: Radius.circular(21),
          ),
        ),
      ),
    );
  }
}



