import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final double? borderRadius;
  final TextStyle? textStyle;

  CustomButton({
    required this.text,
    required this.onPressed,
    required this.textStyle,
    this.backgroundColor,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: backgroundColor, // Optional background color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 0.0), // Set border radius
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0), // You can adjust the padding here
          child: Text(
            text,
            style: textStyle
          ),
        ),
      ),
    );
  }
}
