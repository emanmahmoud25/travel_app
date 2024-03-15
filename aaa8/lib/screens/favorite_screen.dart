import 'package:flutter/material.dart';
import '../Widget/app_data.dart';
import '../Widget/trip_item.dart';

class FavoriteScreen extends StatelessWidget {
  //const FavoriteScreen({super.key});
  final List<Trip> favoriteTrip;
  FavoriteScreen(this.favoriteTrip);
  @override
  Widget build(BuildContext context) {
    if (favoriteTrip.isEmpty) {
      return Center(
        child: Text("This is my favorite travel page"),
      );
    } else {
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return TripItem(
            id: favoriteTrip[index].id,
            title: favoriteTrip[index].title,
            imageUrl: favoriteTrip[index].imageUrl,
            duration: favoriteTrip[index].duration,
            tripType: favoriteTrip[index].tripType,
            season: favoriteTrip[index].season,
            //  removeItem: (String tripId) => _RemoveTrip(
            //  tripId), // Pass the correct function reference here
          );
        },
        itemCount: favoriteTrip.length,
      );
    }
  }
}
