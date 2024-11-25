import 'package:flutter/material.dart';

class FiltersInherited extends InheritedWidget {
  const FiltersInherited({
    required this.tags,
    required this.selectTag,
    required this.unselectTag,
    required this.selectTags,
    required this.unselectTags,
    required super.child,
    super.key,
  });

  final List<String> tags;
  final Function(String tag) selectTag;
  final Function(String tag) unselectTag;
  final Function(List<String> tags) selectTags;
  final Function(List<String> tags) unselectTags;

  @override
  bool updateShouldNotify(covariant FiltersInherited oldWidget) =>
      oldWidget.tags != tags;

  static FiltersInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FiltersInherited>();
  }
}
