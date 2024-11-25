import 'package:flutter/material.dart';

class BottonBorder extends StatelessWidget {
  const BottonBorder({required this.child, required this.color, super.key});

  final Widget child;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: color,
          width: 1,
        ),
      )),
      child: child,
    );
  }
}
