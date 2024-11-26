import 'package:flutter/material.dart';

import 'package:pro_multimedia/pages/events_page/events_page.dart';
import 'package:pro_multimedia/pages/expolore_page.dart';
import 'package:pro_multimedia/pages/home_page.dart';
import 'package:pro_multimedia/pages/news_page.dart';
import 'package:pro_multimedia/pages/start/widgets/bottom_nav.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  int _currentIndex = 2;

  void _onTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final _pagesOptions = const [
    HomePage(),
    NewsPage(),
    EventsPage(),
    ExpolorePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(
        currentIndex: _currentIndex,
        onTap: _onTap,
      ),
      body: _pagesOptions.elementAt(_currentIndex),
    );
  }
}
