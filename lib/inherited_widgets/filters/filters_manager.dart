import 'package:flutter/material.dart';

import 'package:pro_multimedia/entities/filter.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';

class FiltersManager extends StatefulWidget {
  const FiltersManager({required this.child, super.key});

  final Widget child;

  @override
  State<FiltersManager> createState() => _FiltersManagerState();
}

class _FiltersManagerState extends State<FiltersManager> {
  Set<String> _tags = {};

  void _unselectTags(Filter filter) {
    _tags = Set.from(
        _tags.where((tag) => !filter.mapedTags().contains(tag)).toList());
    setState(() {
      _tags = Set.from(
          _tags.where((tag) => tag != filter.category.toLowerCase()).toList());
    });
  }

  void _selectTags(Filter filter) {
    setState(() {
      _tags = Set.from(_tags)
        ..addAll(filter.mapedTags())
        ..add(filter.category.toLowerCase());
    });
  }

  void _selectTag(String tag) {
    setState(() {
      _tags = Set.from(_tags)..add(tag.toLowerCase());
    });
  }

  void _unselectTag(String tag) {
    setState(() {
      _tags = Set.from(_tags)..remove(tag.toLowerCase());
    });
  }

  void _clear() {
    setState(() {
      _tags = {};
    });
  }

  bool _isTagSelected(String tag) {
    return _tags.contains(tag);
  }

  bool _isCategorySelected(Filter filter) {
    if (filter.tags.isEmpty) {
      return _tags.contains(filter.category.toLowerCase());
    }
    return _tags.toSet().containsAll(filter.mapedTags());
  }

  @override
  Widget build(BuildContext context) {
    return FiltersInherited(
      tags: _tags,
      selectTag: _selectTag,
      selectTags: _selectTags,
      unselectTag: _unselectTag,
      unselectTags: _unselectTags,
      isTagSelected: _isTagSelected,
      isCategorySelected: _isCategorySelected,
      clear: _clear,
      child: widget.child,
    );
  }
}
