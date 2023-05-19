import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
    this.obscureText,
    required this.hintText,
    this.height,
    this.width,
    this.icon,
    this.keyboardType,
  });

  final double? height;
  final double? width;
  final TextInputType? keyboardType;
  final bool? obscureText;
  final Widget? icon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0.5,
      borderRadius: BorderRadius.circular(25),
      child: SizedBox(
        height: height,
        width: width,
        child: TextField(
          obscureText: obscureText ?? false,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            suffixIcon: icon,
            fillColor: Color(0xffF2F2F2),
            contentPadding: EdgeInsets.only(top: 10, left: 10),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color(0xff000000),
              fontSize: 12,
              fontFamily: 'PoppinsRegular',
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
