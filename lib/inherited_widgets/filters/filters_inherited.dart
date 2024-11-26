import 'package:flutter/material.dart';

import 'package:pro_multimedia/entities/filter.dart';

class FiltersInherited extends InheritedWidget {
  const FiltersInherited({
    required this.tags,
    required this.selectTag,
    required this.unselectTag,
    required this.selectTags,
    required this.unselectTags,
    required this.isTagSelected,
    required this.isCategorySelected,
    required this.clear,
    required super.child,
    super.key,
  });

  final Set<String> tags;
  final Function(String tag) selectTag;
  final Function(String tag) unselectTag;
  final Function(Filter filter) selectTags;
  final Function(Filter filter) unselectTags;
  final Function(String tag) isTagSelected;
  final Function(Filter filter) isCategorySelected;
  final Function() clear;

  @override
  bool updateShouldNotify(covariant FiltersInherited oldWidget) =>
      oldWidget.tags != tags;

  static FiltersInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FiltersInherited>();
  }
}
