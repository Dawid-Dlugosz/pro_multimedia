import 'package:flutter/material.dart';

import 'package:pro_multimedia/entities/filter.dart';
import 'package:pro_multimedia/modals/filters_modal/widgets/tag_checkbox_item.dart';
import 'package:pro_multimedia/modals/filters_modal/widgets/title_checkbox_item.dart';

class FilterContainer extends StatefulWidget {
  const FilterContainer({required this.filter, super.key});

  final Filter filter;

  @override
  State<FilterContainer> createState() => _FilterContainerState();
}

class _FilterContainerState extends State<FilterContainer>
    with SingleTickerProviderStateMixin {
  bool _isExpanded = false;
  late final Animation<double> _animation;
  late final AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    super.initState();
  }

  void _toggle() {
    setState(() {
      _isExpanded = !_isExpanded;
    });

    if (_isExpanded) {
      _controller.forward();
    } else {
      _controller.reverse();
    }
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TitleCheckboxItem(
          filter: widget.filter,
          toggleTags: _toggle,
          isOpened: _isExpanded,
        ),
        SizeTransition(
          sizeFactor: _animation,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...widget.filter.tags.map(
                (element) => TagCheckboxItem(
                  filter: widget.filter,
                  tag: element,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
