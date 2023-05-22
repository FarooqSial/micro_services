import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({
    super.key,
    required this.height,
    required this.width,
    required this.child,
    required this.color,
    this.borderRadius,
  });

  final double height;
  final double width;
  final Widget child;
  final Color? color;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color ?? Color(0xffffffff),
        borderRadius: BorderRadius.circular(borderRadius ?? 25),
      ),
      child: Center(
        child: child,
      ),
    );
  }
}
