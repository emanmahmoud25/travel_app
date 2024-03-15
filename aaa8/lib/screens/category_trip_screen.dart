import 'package:aaa8/Widget/trip_item.dart';
import 'package:flutter/material.dart';
import 'package:aaa8/Widget/app_data.dart';

class CategoryTripScreen extends StatefulWidget {
  static const String screenRoute = '/category-trip';

  final List<Trip> availableTrips;

  CategoryTripScreen(this.availableTrips);
  //const CategoryTripScreen({super.key});

  @override
  State<CategoryTripScreen> createState() => _CategoryTripScreenState();
}

class _CategoryTripScreenState extends State<CategoryTripScreen> {
  //const CategoryTripScreen({super.key, required title, required id});
  late String CategoryTitle;
  late List<Trip> DisplayTrips;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Initialize DisplayTrips here

    DisplayTrips = widget.availableTrips; // Initialize DisplayTrips here
  }

  @override
  void didChangeDependencies() {
    final routeArgument = (ModalRoute.of(context)?.settings.arguments ??
        <String, String>{}) as Map;
    final categoryid = routeArgument['id'];
    CategoryTitle = routeArgument['title'];
    DisplayTrips:
    (() => widget.availableTrips.where((trip) {
          return trip.categories.contains(categoryid);
        }).toList());

    super.didChangeDependencies();
  }

  void _RemoveTrip(String TripId) {
    DisplayTrips.removeWhere((trip) => trip.id == TripId);
  }

  @override
  Widget build(BuildContext context) {
    // const CategoryTripScreen({super.key});
    /*
  final String categoryid;
  final String categorytitle;
  CategoryTripScreen(this.categoryid, this.categorytitle);
  */

    //Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            CategoryTitle,
          ),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return TripItem(
              id: DisplayTrips[index].id,
              title: DisplayTrips[index].title,
              imageUrl: DisplayTrips[index].imageUrl,
              duration: DisplayTrips[index].duration,
              tripType: DisplayTrips[index].tripType,
              season: DisplayTrips[index].season,
              // removeItem: (String tripId) => _RemoveTrip(
              //  tripId), // Pass the correct function reference here
            );
          },
          itemCount: DisplayTrips.length,
        ));
  }
}
