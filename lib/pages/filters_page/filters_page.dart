import 'package:flutter/material.dart';

import 'package:pro_multimedia/dummy_data.dart';
import 'package:pro_multimedia/pages/filters_page/widgets/filter_buttons.dart';
import 'package:pro_multimedia/pages/filters_page/widgets/filter_container.dart';
import 'package:pro_multimedia/pages/filters_page/widgets/slider/slider_container.dart';
import 'package:pro_multimedia/widgets/close_app_bar.dart';

class FiltersPage extends StatelessWidget {
  const FiltersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            const CloseAppBar(
              title: 'Filtry',
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  ...DummyData.filters.map(
                    (element) => FilterContainer(filter: element),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const SliderContainer(),
            const SizedBox(
              height: 50,
            ),
            const FilterButtons(),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
