import '../Widget/app_data.dart';
import 'package:aaa8/models/trip.dart';
import 'package:flutter/material.dart';
import '../screens/tab_screen.dart';
import '../screens/trip_details_scsreen.dart';
import '../screens/favorite_screen.dart';

class TripDetailsScreen extends StatelessWidget {
  // const TripDetailsScreen({super.key});
  static const screenRoute = '/trip-details';
  final void Function(String?) ManageFavorite;
  final bool Function(String?) isFavorite;
  TripDetailsScreen(this.ManageFavorite, this.isFavorite);

  Widget BuildSectionTitle(BuildContext context, String titleText) {
    return Container(
      alignment: Alignment.topLeft,
      child: Text(titleText, style: Theme.of(context).textTheme.headlineSmall),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
    );
  }

  Widget BuildListViewContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)),
      height: 200,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final TripId = ModalRoute.of(context)?.settings.arguments as String?;
    final selectedTrip = Trip_Data.firstWhere((trip) => trip.id == TripId);
    return Scaffold(
      appBar: AppBar(
        title: Text('${selectedTrip.title}'),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image.network(
              selectedTrip.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          BuildSectionTitle(context, 'Activities'),
          SizedBox(height: 10),
          BuildListViewContainer(
            ListView.builder(
              itemCount: selectedTrip.activities.length,
              itemBuilder: (ctx, index) => Card(
                elevation: 0.5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: Text(selectedTrip.activities[index]),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          BuildSectionTitle(context, 'The daily programme'),
          BuildListViewContainer(
            ListView.builder(
              itemCount: selectedTrip.program.length,
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('day ${index + 1}'),
                    ),
                    title: Text(selectedTrip.program[index]),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFavorite(TripId) ? Icons.star : Icons.star_border,
        ),
        onPressed: () => ManageFavorite(TripId),
      ),

      //() //{
      //   Navigator.of(context).pop(TripId);
      // }
    );
  }
}
