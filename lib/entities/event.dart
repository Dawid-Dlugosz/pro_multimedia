import 'package:flutter/material.dart';
import 'package:pro_multimedia/entities/atraction.dart';

@immutable
class Event {
  final int id;
  final String title;
  final List<String> performances;
  final DateTime startDate;
  final DateTime? endDate;
  final String place;
  final String address;
  final String image;
  final List<Atraction> contractors;
  final List<Atraction> programs;
  final bool isFree;
  final String snippedAddress;
  final String imageSnipped;

  const Event({
    required this.id,
    required this.title,
    required this.performances,
    required this.startDate,
    required this.endDate,
    required this.place,
    required this.address,
    required this.image,
    required this.contractors,
    required this.programs,
    required this.isFree,
    required this.snippedAddress,
    required this.imageSnipped,
  });

  String formattedPerformances() {
    return performances.join(' | ');
  }

  String formattedDate() {
    final date = '${startDate.day.toString().padLeft(2, '0')}.'
        '${startDate.month.toString().padLeft(2, '0')}.'
        '${startDate.year.toString().substring(2)}';
    final time = '${startDate.hour.toString().padLeft(2, '0')}.'
        '${startDate.minute.toString().padLeft(2, '0')}.';

    return '$date r. | g. $time';
  }

  String snippedDate() {
    if (endDate != null) {
      final start = '${startDate.day.toString()}.'
          '${startDate.month.toString().padLeft(2, '0')}';
      final end = '${endDate?.day.toString()}.'
          '${endDate?.month.toString().padLeft(2, '0')}.'
          '${endDate?.year.toString().substring(2)}';

      return '$start-$end r.';
    }
    final start = '${startDate.day.toString()}.'
        '${startDate.month.toString().padLeft(2, '0')}.'
        '${startDate.year.toString()}';

    return '$start r.';
  }
}
