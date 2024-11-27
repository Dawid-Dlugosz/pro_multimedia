import 'package:flutter/material.dart';
import 'package:pro_multimedia/custom_theme/color_extension.dart';
import 'package:pro_multimedia/inherited_widgets/searcher/searcher_inherited.dart';
import 'package:pro_multimedia/modals/filters_modal/filters_modal.dart';
import 'package:pro_multimedia/utils/image_asset.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({super.key});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar>
    with SingleTickerProviderStateMixin {
  late final CurvedAnimation _animation;
  late final AnimationController _controller;
  late final TextEditingController _textEditingController;
  late final FocusNode _focusNode;

  bool _isVisibleSearcher = false;
  final _duration = const Duration(milliseconds: 300);

  @override
  void initState() {
    _controller = AnimationController(
      duration: _duration,
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _textEditingController = TextEditingController();
    _focusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _animation.dispose();
    _textEditingController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  void _toggleSearcher() {
    setState(() {
      _isVisibleSearcher = !_isVisibleSearcher;
    });
    if (_isVisibleSearcher) {
      _controller.forward();
      FocusScope.of(context).requestFocus(_focusNode);
    } else {
      _controller.reverse();
      FocusScope.of(context).unfocus();
      _textEditingController.clear();
      SearcherInherited.of(context)!.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    final searcherInherited = SearcherInherited.of(context)!;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Title(),
            Actions(
              onTapSeacher: _toggleSearcher,
            ),
          ],
        ),
        AnimatedContainer(
          duration: _duration,
          height: _isVisibleSearcher ? 67.0 : 0.0,
          child: FadeTransition(
            opacity: _animation,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: TextField(
                focusNode: _focusNode,
                controller: _textEditingController,
                onChanged: searcherInherited.updateText,
                style: const TextStyle(fontSize: 15),
              ),
            ),
          ),
        )
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Image.asset(
            ImageAsset.arrow,
          ),
          padding: EdgeInsets.zero,
          onPressed: () {},
        ),
        const Text(
          'Wydarzenia',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }
}

class Actions extends StatelessWidget {
  const Actions({required this.onTapSeacher, super.key});

  final Function() onTapSeacher;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: onTapSeacher,
          icon: Image.asset(
            ImageAsset.searcher,
            color: Theme.of(context).extension<ColorExtension>()!.tinyColor,
          ),
        ),
        IconButton(
          onPressed: () => showBottomSheet(
            context: context,
            builder: (_) => const FiltersPage(),
          ),
          icon: Image.asset(
            ImageAsset.filters,
            color: Theme.of(context).extension<ColorExtension>()!.tinyColor,
          ),
        )
      ],
    );
  }
}
