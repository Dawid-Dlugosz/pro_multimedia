import 'package:flutter/material.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';

class FiltersManager extends StatefulWidget {
  const FiltersManager({required this.child, super.key});

  final Widget child;

  @override
  State<FiltersManager> createState() => _FiltersManagerState();
}

class _FiltersManagerState extends State<FiltersManager> {
  List<String> _tags = [];

  void _unselectTags(List<String> tags) {
    setState(() {
      _tags = List.from(_tags.where((tag) => !tags.contains(tag)).toList());
    });
  }

  void _selectTags(List<String> tags) {
    setState(() {
      _tags = List.from(_tags)..addAll(tags);
    });
  }

  void _selectTag(String tag) {
    setState(() {
      _tags = List.from(_tags)..add(tag.toLowerCase());
    });
  }

  void _unselectTag(String tag) {
    setState(() {
      _tags = List.from(_tags)..remove(tag.toLowerCase());
    });
  }

  @override
  Widget build(BuildContext context) {
    return FiltersInherited(
      tags: _tags,
      selectTag: _selectTag,
      selectTags: _selectTags,
      unselectTag: _unselectTag,
      unselectTags: _unselectTags,
      child: widget.child,
    );
  }
}
