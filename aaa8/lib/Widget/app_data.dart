import '../models/trip.dart';
import '../models/Category.dart';
import 'package:flutter/material.dart';

const Category_data = [];

class Category {
  final String id;
  final String title;
  final String imageUrl;
  Category({required this.id, required this.title, required this.imageUrl});
}

List<Category> CategoryData = [
  Category(
      id: "1c",
      title: "Mountains",
      imageUrl:
          "https://th.bing.com/th/id/OIP.Va933qMAO_h_tidBnUaY7gHaHa?pid=ImgDet&rs=1"),
  Category(
      id: "2c",
      title: "lakes",
      imageUrl:
          "https://th.bing.com/th/id/OIP.OBvlgGFGvKH6Wtu697Ry-gHaE9?pid=ImgDet&rs=1"),
  Category(
      id: "3c",
      title: "Beaches",
      imageUrl:
          "https://th.bing.com/th/id/OIP.orAGOZuK3dYcizKXIO6Q4gHaFS?pid=ImgDet&rs=1"),
  Category(
      id: "4c",
      title: "Sahara'",
      imageUrl:
          "https://www.cantstopdreaming.com/wp-content/uploads/2017/05/IMG_7770.jpg"),
  Category(
      id: "5c",
      title: "Historic cities",
      imageUrl:
          "https://t24hs.com/wp-content/uploads/2021/07/Edinburgh-3a656be4c7754846a90634268a8594cf.jpeg"),
  Category(
      id: "6c",
      title: "other'",
      imageUrl:
          "https://th.bing.com/th/id/R.08d45fd9259a57addc0c468591e648b6?rik=T52v76oaqtoa6Q&pid=ImgRaw&r=0"),
];

const Trips_data = [];

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

// ignore: non_constant_identifier_names
List<Trip> Trip_Data = [
  Trip(
    id: '1m',
    categories: [
      '1c',
    ],
    title: 'Alps',
    tripType: TripType.Exploration,
    season: Season.summer,
    imageUrl:
        'https://images.unsplash.com/photo-1611523658822-385aa008324c?ixid=MXwxMjA3fDB8MHxzZWFyY2h8N3x8bW91bmF0aW5zfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 20,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Albite,set do isomer tempore ancaidediontiot labourer et dollar magna arequipa.',
      'Yessing pelite set du isopod tempura ancaidediontiot labourer at dollar magna alexia.',
      'Lorem Ipsum dollar at dollar magna alicia.',
      'lor do isopod tempura ancaidediontiot labourer at dollar magna alicia.',
      'Lorem Ipsum Dollar Set Amity, Conciliator Arabia Yessing Aliter, Set Do Assumed Tempore Ancaidediontiot Labours et Dollar Magna Alicia.',
      'Lorem Ipsum Dollar Set Amity ,Tempura Uncaidedituut Labours et Dollar Magna Alicia.',
    ],
    isInsummer: true,
    isInwinter: false,
    isInfamilies: false,
  ),
  Trip(
    id: '2m',
    categories: [
      '1c',
    ],
    title: 'south mountains',
    tripType: TripType.Exploration,
    season: Season.winter,
    imageUrl:
        'https://images.unsplash.com/photo-1612456225451-bb8d10d0131d?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjZ8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 10,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Albite,set do isomer tempore ancaidediontiot labourer et dollar magna arequipa.',
      'Yessing yelite set du isopod tempura ancaidediontiot labourer at dollar magna alexia.',
      'Lorem Ipsum dollar at dollar magna alicia.',
      'lor do iosmod tempur ancaidediontiot labourer at dollar magna alicia.',
    ],
    isInsummer: false,
    isInwinter: true,
    isInfamilies: false,
  ),
  Trip(
    id: '3m',
    categories: [
      '1c',
    ],
    title: 'high mountains',
    tripType: TripType.Recovery,
    season: Season.spring,
    imageUrl:
        'https://images.unsplash.com/photo-1592221912790-2b4df8882ea9?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mzd8fG1vdW5hdGluc3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 45,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: true,
    isInwinter: false,
    isInfamilies: true,
  ),
  Trip(
    id: '4m',
    categories: [
      '2c',
      '1c',
    ],
    title: 'Great Lake',
    tripType: TripType.Activity,
    season: Season.spring,
    imageUrl:
        'https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?ixid=MXwxMjA3fDB8MHxzZWFyY2h8OXx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 60,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: false,
    isInfamilies: true,
  ),
  Trip(
    id: '5m',
    categories: [
      '2c',
      '1c',
    ],
    title: 'Little Lakes',
    tripType: TripType.Activity,
    season: Season.winter,
    imageUrl:
        'https://images.unsplash.com/photo-1580100586938-02822d99c4a8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjF8fGxha2V8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 15,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: true,
    isInfamilies: false,
  ),
  Trip(
    id: '6m',
    categories: [
      '2c',
    ],
    title: 'بحيرة الزمرد',
    tripType: TripType.Exploration,
    season: Season.summer,
    imageUrl:
        'https://images.unsplash.com/photo-1501785888041-af3ef285b470?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NHx8bGFrZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 240,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: true,
    isInwinter: false,
    isInfamilies: false,
  ),
  Trip(
    id: '7m',
    categories: [
      '3c',
    ],
    title: 'first beach',
    tripType: TripType.Exploration,
    season: Season.summer,
    imageUrl:
        'https://images.unsplash.com/photo-1493558103817-58b2924bce98?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTAxfHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 20,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: true,
    isInwinter: false,
    isInfamilies: false,
  ),
  Trip(
    id: '8m',
    categories: [
      '3c',
    ],
    title: 'big beach',
    tripType: TripType.Recovery,
    season: Season.spring,
    imageUrl:
        'https://images.unsplash.com/photo-1519046904884-53103b34b206?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8YmVhY2h8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 35,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: false,
    isInfamilies: true,
  ),
  Trip(
    id: '9m',
    categories: [
      '3c',
    ],
    title: 'rock beach',
    tripType: TripType.Exploration,
    season: Season.summer,
    imageUrl:
        'https://images.unsplash.com/photo-1519602035691-16ac091344ef?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MjE1fHxiZWFjaHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 45,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: true,
    isInwinter: false,
    isInfamilies: false,
  ),
  Trip(
    id: '10m',
    categories: [
      '4c',
    ],
    title: 'Sahara desert',
    tripType: TripType.Activity,
    season: Season.winter,
    imageUrl:
        'https://images.unsplash.com/photo-1473580044384-7ba9967e16a0?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8ZGVzZXJ0fGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: true,
    isInfamilies: false,
  ),
  Trip(
    id: '11m',
    categories: [
      '4c',
      '1c',
    ],
    title: 'Western Desert',
    tripType: TripType.Activity,
    season: Season.winter,
    imageUrl:
        'https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: true,
    isInfamilies: false,
  ),
  Trip(
    id: '12m',
    categories: [
      '4c',
    ],
    title: 'sandy desert',
    tripType: TripType.Activity,
    season: Season.winter,
    imageUrl:
        'https://images.unsplash.com/photo-1452022582947-b521d8779ab6?ixid=MXwxMjA3fDB8MHxzZWFyY2h8ODN8fGRlc2VydHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: false,
    isInfamilies: true,
  ),
  Trip(
    id: '13m',
    categories: [
      '5c',
    ],
    title: 'first city',
    tripType: TripType.Activity,
    season: Season.winter,
    imageUrl:
        'https://images.unsplash.com/photo-1498307833015-e7b400441eb8?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NDJ8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: true,
    isInfamilies: false,
  ),
  Trip(
    id: '14m',
    categories: [
      '5c',
    ],
    title: 'second city',
    tripType: TripType.Activity,
    season: Season.Autumn,
    imageUrl:
        'https://images.unsplash.com/photo-1467269204594-9661b134dd2b?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NjR8fHRyYXZlbHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: false,
    isInfamilies: true,
  ),
  Trip(
    id: '15m',
    categories: [
      '5c',
    ],
    title: 'old City',
    tripType: TripType.Activity,
    season: Season.winter,
    imageUrl:
        'https://images.unsplash.com/photo-1519923041107-e4dc8d9193da?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Njd8fG9sZCUyMGNpdHl8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: true,
    isInfamilies: true,
  ),
  Trip(
    id: '16m',
    categories: [
      '6c',
    ],
    title: 'snow sport',
    tripType: TripType.Activity,
    season: Season.spring,
    imageUrl:
        'https://images.unsplash.com/photo-1605540436563-5bca919ae766?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8c2tpaW5nfGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: false,
    isInfamilies: true,
  ),
  Trip(
    id: '17m',
    categories: [
      '6c',
      '2c',
    ],
    title: 'jet skiting',
    tripType: TripType.Activity,
    season: Season.winter,
    imageUrl:
        'https://images.unsplash.com/photo-1601024445121-e5b82f020549?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTJ8fHBhcmFjaHV0ZSUyMGp1bXBpbmd8ZW58MHx8MHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
    duration: 30,
    activities: [
      'visit archaeological sites',
      'walking tour',
      'Visit malls for shopping',
      'having lunch',
      'Enjoy the beautiful scenery'
    ],
    program: [
      'Aliite,set do iosmud tempore ancaidediontiot laboure et dollar magna alequiwa.',
      'Yesking yelite set du iosmod tempur uncaidedidiontiot laboure at dollar magna alekwa.',
      'Lorem Ipsum dollar at dollar magna alikiwa.',
      'lor do iosmod tempur ancaidediontiot laboure at dollar magna alikiwa.',
    ],
    isInsummer: false,
    isInwinter: true,
    isInfamilies: true,
  ),
];
