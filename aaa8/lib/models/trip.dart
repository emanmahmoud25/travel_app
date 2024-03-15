import 'package:flutter/material.dart';
import '../screens/category_trip_screen.dart';

enum Season {
  summer,
  spring,
  winter,
  Autumn,
}

enum TripType { Exploration, Recovery, Activity, Therapy }

class Trip {
  final String id;
  final String title;
  final String imageUrl;
  final List<String> categories;
  final List<String> activities;
  final List<String> program;
  final int duration;
  final Season season;
  final TripType tripType;
  final bool isInsummer;
  final bool isInwinter;
  final bool isInfamilies;

  Trip(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.categories,
      required this.activities,
      required this.program,
      required this.duration,
      required this.season,
      required this.tripType,
      required this.isInsummer,
      required this.isInwinter,
      required this.isInfamilies});
}
