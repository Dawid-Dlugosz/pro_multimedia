import 'package:flutter/material.dart';

@immutable
class Filter {
  const Filter({
    required this.category,
    required this.tags,
  });

  final String category;
  final List<String> tags;

  List<String> mapedTags() =>
      tags.map((element) => element.toLowerCase()).toList();
}
