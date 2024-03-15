import '../Widget/app_data.dart' as app_data;
import 'package:aaa8/screens/category_screen.dart';
import 'package:flutter/material.dart';
import '../Widget/app_drawer.dart';
import '../screens/favorite_screen.dart';
import '../widget/app_data.dart';

/*
class TabScareen extends StatelessWidget {
  const TabScareen({super.key});
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("tourist guide")),
          bottom: TabBar(tabs: [
            Tab(
              icon: Icon(Icons.dashboard),
              text: "Categories",
            ),
            Tab(
              icon: Icon(Icons.star_rate),
              text: "Favorite",
            )
          ]),
        ),
        body: TabBarView(children: [
          CategoryScreen(),
          FavoriteScreen(),
        ]),
      ),
    );
  }
}
*/
class TabScareen extends StatefulWidget {
  //const TabScareen({super.key});
  final List<app_data.Trip> favoriteTrip;
  TabScareen(this.favoriteTrip);

  @override
  State<TabScareen> createState() => _TabScareenState();
}

class _TabScareenState extends State<TabScareen> {
  void _SelectedScreen(int index) {
    setState(() {
      _SelectedScreenIndex = index;
    });
  }

  late final List<Map<String, Object>> _Screens;
  int _SelectedScreenIndex = 0;
  @override
  void initState() {
    super.initState();
    _Screens = [
      {
        'Screen': CategoryScreen(),
        'Title': 'Trip apps',
      },
      {
        'Screen': FavoriteScreen(widget.favoriteTrip),
        'Title': 'Favorite trips',
      }
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(_Screens[_SelectedScreenIndex]['Title'] as String)),
      ),
      drawer: AppDrawer(),
      body: _Screens[_SelectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _SelectedScreen,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.white,
          currentIndex: _SelectedScreenIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: "Apps"),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: "Favorite"),
          ]),
    );
  }
}
