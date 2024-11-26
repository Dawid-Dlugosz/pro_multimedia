import 'package:flutter/material.dart';

import 'package:pro_multimedia/custom_theme/custom_theme.dart';
import 'package:pro_multimedia/inherited_widgets/filters/filters_manager.dart';
import 'package:pro_multimedia/pages/start/start_screen.dart';

void main() {
  runApp(
    FiltersManager(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: CustomTheme.customTheme,
        home: const StartScreen(),
      ),
    ),
  );
}
