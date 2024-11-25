import 'package:flutter/material.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({required this.icon, required this.onTap, super.key});

  final Widget icon;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
        onPressed: onTap,
        icon: icon,
      ),
    );
  }
}
