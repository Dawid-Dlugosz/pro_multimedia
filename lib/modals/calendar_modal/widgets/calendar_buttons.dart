import 'package:flutter/material.dart';

class CalendarButtons extends StatelessWidget {
  const CalendarButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Anuluj'),
        ),
        ElevatedButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('Dalej'),
        ),
      ],
    );
  }
}
