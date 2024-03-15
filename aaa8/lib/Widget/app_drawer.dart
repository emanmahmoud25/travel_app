import 'package:aaa8/screens/filters_screen.dart';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  ListTile BuildListTile(
      String title, IconData icon, void Function() onTabLink) {
    return ListTile(
      leading: Icon(
        // Icons.card_travel,
        icon,
        size: 30,
        color: Colors.blue,
      ),
      title: Text(
        //  "Travels",
        title,
        style: TextStyle(fontSize: 24),
      ),
      onTap: onTabLink,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.only(top: 40),
            alignment: Alignment.center,
            color: Colors.grey[700],
            child: Text(
              "Your tourist guide",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          BuildListTile(
            'Travels',
            Icons.card_travel,
            () {
              // Navigator.of(context).pushNamed('/');
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          BuildListTile(
            'Filter',
            Icons.filter_list,
            () {
              // Navigator.of(context).pushNamed(Filters.screenRoute);
              Navigator.of(context).pushReplacementNamed(Filters.screenRoute);
            },
          )
        ],
      ),
    );
  }
}
//filter