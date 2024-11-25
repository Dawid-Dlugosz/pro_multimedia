import 'package:flutter/material.dart';

@immutable
class Filter {
  const Filter({
    required this.category,
    required this.tags,
  });

  final String category;
  final List<String> tags;

  bool isCatagorySelected(List<String> tags) {
    final mapedTags =
        this.tags.map((element) => element.toLowerCase()).toList();
    if (mapedTags.isEmpty) {
      return tags.contains(category.toLowerCase());
    }
    return mapedTags.every((element) => tags.contains(element));
  }
}
