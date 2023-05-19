import 'package:flutter/material.dart';

class Mycontainer extends StatelessWidget {
  const Mycontainer({
    super.key,
    this.height,
    this.width,
    required this.child,
  });

  final double? height;
  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        color: Color(0xffED1C24),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: child
      ),
    );
  }
}
