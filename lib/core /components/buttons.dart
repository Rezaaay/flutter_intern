import 'package:flutter/material.dart';
import '../constants/colors.dart';

enum ButtonStyleType { filled, outlined }

class Button extends StatelessWidget {
  const Button.filled({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyleType.filled,
    this.color = AppColors.blue,
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 54.0,
    this.borderRadius = 8.0,
    this.icon,
    this.suffixIcon,
    this.disabled = false,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.bold,
  });

  const Button.outlined({
    super.key,
    required this.onPressed,
    required this.label,
    this.style = ButtonStyleType.outlined,
    this.color = Colors.transparent,
    this.textColor = AppColors.blue,
    this.width = double.infinity,
    this.height = 54.0,
    this.borderRadius = 8.0,
    this.icon,
    this.suffixIcon,
    this.disabled = false,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.bold,
  });

  final VoidCallback? onPressed;
  final Widget label; // Changed from String to Widget
  final ButtonStyleType style;
  final Color color;
  final Color textColor;
  final double? width;
  final double height;
  final double borderRadius;
  final Widget? icon;
  final Widget? suffixIcon;
  final bool disabled;
  final double fontSize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    final isDisabled = disabled;

    return SizedBox(
      height: height,
      width: width,
      child: style == ButtonStyleType.filled
          ? ElevatedButton(
              onPressed: isDisabled ? null : onPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: color,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) icon!,
                  if (icon != null) const SizedBox(width: 10.0),
                  Flexible(child: label), // Display the label widget
                  if (suffixIcon != null) const SizedBox(width: 10.0),
                  if (suffixIcon != null) suffixIcon!,
                ],
              ),
            )
          : OutlinedButton(
              onPressed: isDisabled ? null : onPressed,
              style: OutlinedButton.styleFrom(
                backgroundColor: color,
                side: const BorderSide(color: AppColors.stroke),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) icon!,
                  if (icon != null) const SizedBox(width: 10.0),
                  Flexible(child: label), // Display the label widget
                  if (suffixIcon != null) const SizedBox(width: 10.0),
                  if (suffixIcon != null) suffixIcon!,
                ],
              ),
            ),
    );
  }
}
