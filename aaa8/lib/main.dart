import 'package:flutter/material.dart';
import 'package:aaa8/models/trip.dart'
    as model; // Import the Trip class from the models package with a prefix 'model'
import '../Widget/app_data.dart' as app_data;
import '../models/trip.dart';
import '../screens/category_trip_screen.dart';
import '../screens/filters_screen.dart';
import '../screens/tab_screen.dart';
import '../screens/trip_details_scsreen.dart';
import '../Widget/app_data.dart';
import '../screens/favorite_screen.dart';

// The rest of the code remains the same

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  Map<String, bool> _filters = {
    'summer': false,
    'winter': false,
    'families': false,
  };
//List  _availableTrips = Trip_Data; // Convert Trips_data to List<Trip>
  List<app_data.Trip> _availableTrips =
      app_data.Trip_Data.cast<app_data.Trip>();
  List<app_data.Trip> _FavoriteTrip = [];

  // ... existing methods ...

  void _changeFilter(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

      _availableTrips = Trip_Data.where((trip) {
        if (_filters['summer'] == true && trip.isInsummer != true) {
          return false;
        }
        if (_filters['winter'] == true && trip.isInwinter != true) {
          return false;
        }
        if (_filters['families'] == true && trip.isInfamilies != true) {
          return false;
        }

        return true;
      }).toList();
    });
  }

  void _ManageFavorite(String? tripId) {
    final existingindex = _FavoriteTrip.indexWhere((trip) => trip.id == tripId);
    if (existingindex >= 0) {
      setState(() {
        _FavoriteTrip.removeAt(existingindex);
      });
    } else {
      setState(() {
        _FavoriteTrip.add(Trip_Data.firstWhere((trip) => trip.id == tripId));
      });
    }
  }

  bool _isFavorite(String? id) {
    if (id == null) {
      // Handle the case where id is null (optional)
      return false; // or return some default value if necessary
    }
    return _FavoriteTrip.any((trip) => trip.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "FORTE",
          textTheme: ThemeData.light().textTheme.copyWith(
              headlineSmall: const TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "FORTE",
              ),
              titleLarge: const TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: "FORTE",
              ))),
      //home: const CategoryScreen(),
      initialRoute: '/',
      routes: {
        '/': (ctx) => TabScareen(_FavoriteTrip),
        CategoryTripScreen.screenRoute: (ctx) =>
            CategoryTripScreen(_availableTrips),
        TripDetailsScreen.screenRoute: (ctx) =>
            TripDetailsScreen(_ManageFavorite, _isFavorite),

        Filters.screenRoute: (ctx) => Filters(
              currentFilters: _filters,
              onSaveFilters: _changeFilter,
            ),

        //  routes: {
        //  "/category-trip": (ctx) =>  const CategoryTripScreen(
      },

      //if i couldnot reach to page
      onUnknownRoute: (settings) {
        // Handle unknown routes by returning a valid route or error page.
        return MaterialPageRoute(builder: (context) => const NotFoundPage());
      },
    );
  }
}

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('404 - Not Found'),
      ),
      body: const Center(
        child: Text('Oops! This page was not found.'),
      ),
    );
  }
}
