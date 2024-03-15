import 'package:aaa8/models/trip.dart';
import 'package:aaa8/screens/trip_details_scsreen.dart';
import 'package:flutter/material.dart';

class TripItem extends StatelessWidget {
  //const TripItem({super.key});
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final TripType tripType;
  final Season season;
  //final Function removeItem;

  const TripItem({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.tripType,
    required this.season,
    required this.id,
    // required this.removeItem
  });
/*
  String get seasonText {
    if (season == Season.winter) {
      return 'winter';
    }
      if (season == Season.summer) {
        return 'summer';
      }
        if (season == Season.spring) {
          return 'spring';
          }
          if (season == Season.Autumn) {
            return 'Autumn';
          }
  }
*/

  String get seasonText {
    switch (season) {
      case Season.winter:
        return "Winter";
        break;
      case Season.summer:
        return 'summer';
        break;
      case Season.spring:
        return 'spring';
        break;
      case Season.Autumn:
        return 'Autumn';
        break;
      default:
        return 'un known';
    }
  }

  String get tripTypeText {
    switch (tripType) {
      case TripType.Exploration:
        return "Exploration";
        break;
      case TripType.Activity:
        return 'Activity';
        break;
      case TripType.Recovery:
        return 'Recovery';
        break;
      case TripType.Therapy:
        return 'Therapy';
        break;
      default:
        return 'un known';
    }
  }

  void selectTrip(BuildContext context) {
    Navigator.of(context)
        .pushNamed(
      TripDetailsScreen.screenRoute,
      arguments: id,
    )
        .then((resault) {
      if (resault != null) {
        // removeItem(resault);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectTrip(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 7,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.network(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                    height: 250,
                    alignment: Alignment.bottomRight,
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.black.withOpacity(0),
                            Colors.black.withOpacity(0.8)
                          ],
                          stops: [
                            0.6,
                            1
                          ]),
                    ),
                    child: Text(
                      title,
                      style: Theme.of(context).textTheme.titleLarge,
                      overflow: TextOverflow.fade,
                    ))
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.today,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text("$duration days")
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(seasonText)
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.family_restroom,
                        color: Colors.amber,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(tripTypeText)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
