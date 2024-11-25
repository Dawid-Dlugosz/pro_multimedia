import 'package:flutter/material.dart';

@immutable
class Atraction {
  final String name;
  final String? type;

  const Atraction({
    required this.name,
    this.type,
  });

  String getText() {
    return '$name ${type != null ? ' - $type' : ''}';
  }
}
