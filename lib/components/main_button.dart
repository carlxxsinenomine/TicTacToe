import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String titleLabel;
  final VoidCallback? onPressed;
  final double width;

  const MainButton({
    required this.titleLabel,
    this.onPressed,
    this.width = 150,
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0,
      fillColor: Color(0xFFD97D55),
      constraints: BoxConstraints.tightFor(width: width, height: 56),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
          side: BorderSide(
            width: 2,
            style: BorderStyle.solid,
          )
      ),
      child: Text(
        titleLabel,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white
        ),
      ),
    );
  }
}