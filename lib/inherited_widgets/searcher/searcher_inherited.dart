import 'package:flutter/material.dart';

class SearcherInherited extends InheritedWidget {
  const SearcherInherited({
    required this.clear,
    required this.updateText,
    required this.text,
    required super.child,
    super.key,
  });

  final Function() clear;
  final Function(String newText) updateText;
  final String? text;

  @override
  bool updateShouldNotify(covariant SearcherInherited oldWidget) =>
      oldWidget.text != text;

  static SearcherInherited? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SearcherInherited>();
  }
}
