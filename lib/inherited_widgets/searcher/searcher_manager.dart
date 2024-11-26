import 'package:flutter/material.dart';

import 'package:pro_multimedia/inherited_widgets/searcher/searcher_inherited.dart';

class SearcherManager extends StatefulWidget {
  const SearcherManager({required this.child, super.key});

  final Widget child;

  @override
  State<SearcherManager> createState() => _SearcherManagerState();
}

class _SearcherManagerState extends State<SearcherManager> {
  String? text;

  void _updateText(String newText) {
    setState(() {
      text = newText;
    });
  }

  void _clear() {
    setState(() {
      text = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SearcherInherited(
      clear: _clear,
      updateText: _updateText,
      text: text,
      child: widget.child,
    );
  }
}
