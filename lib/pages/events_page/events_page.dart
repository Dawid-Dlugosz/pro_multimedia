import 'package:flutter/material.dart';

import 'package:pro_multimedia/inherited_widgets/favourite/favourite_manager.dart';
import 'package:pro_multimedia/inherited_widgets/searcher/searcher_manager.dart';
import 'package:pro_multimedia/pages/events_page/widgets/custom_app_bar.dart';
import 'package:pro_multimedia/pages/events_page/widgets/events_list/events_list.dart';
import 'package:pro_multimedia/pages/events_page/widgets/events_slider/event_slider.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: FavoritesManager(
          child: SearcherManager(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomAppBar(),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(height: 20),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: 300,
                    child: EventsSlider(),
                  ),
                ),
                SliverPadding(
                  padding: EdgeInsets.all(10.0),
                  sliver: EventsList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
