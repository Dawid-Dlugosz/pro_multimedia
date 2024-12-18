import 'package:flutter/material.dart';

import 'package:pro_multimedia/inherited_widgets/favourite/favourite_manager.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_inherited.dart';
import 'package:pro_multimedia/inherited_widgets/searcher/searcher_manager.dart';
import 'package:pro_multimedia/pages/events_page/widgets/custom_app_bar.dart';
import 'package:pro_multimedia/pages/events_page/widgets/events_list/events_list.dart';
import 'package:pro_multimedia/pages/events_page/widgets/events_slider/event_slider.dart';
import 'package:pro_multimedia/pages/events_page/widgets/landscape_content.dart';
import 'package:pro_multimedia/pages/events_page/widgets/tags/tags.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tags = FiltersInherited.of(context)!.tags;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
      bottom: false,
      left: false,
      right: false,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: FavoritesManager(
            child: SearcherManager(
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: CustomAppBar(),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 20),
                  ),
                  if (isPortrait)
                    tags.isEmpty
                        ? const SliverToBoxAdapter(
                            child: SizedBox(
                              height: 300,
                              child: EventsSlider(),
                            ),
                          )
                        : const SliverToBoxAdapter(child: Tags()),
                  if (isPortrait)
                    const SliverPadding(
                      padding: EdgeInsets.all(10.0),
                      sliver: EventsList(
                        isPortrait: true,
                      ),
                    ),
                  if (MediaQuery.of(context).orientation !=
                      Orientation.portrait)
                    SliverToBoxAdapter(
                      child: LandscapeContent(
                        tags: tags,
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
