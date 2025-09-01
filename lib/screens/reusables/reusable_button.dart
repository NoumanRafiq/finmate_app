import 'package:flutter/material.dart';

Widget reusableButton({
  required String label,
  VoidCallback? onPressed,
  Color? color,
  double? radius,
  double? fontSize,
}) {
  final brightness = ThemeData.estimateBrightnessForColor(
    color ?? Colors.transparent,
  );
  final textColor = (brightness == Brightness.dark)
      ? Colors.white
      : Colors.teal.shade900;
  return SizedBox(
    child: FilledButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        side: BorderSide(color: textColor, width: 2),
        backgroundColor: color ?? Colors.blueGrey,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(radius??10),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(color: textColor, fontWeight: FontWeight.w700, fontSize: fontSize??16),
      ),
    ),
  );
}
