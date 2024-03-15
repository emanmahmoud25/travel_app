import 'package:aaa8/Widget/app_drawer.dart';
import 'package:aaa8/screens/filters_screen.dart';
import 'package:flutter/material.dart';
import 'filters_screen.dart';

class Filters extends StatefulWidget {
  static const screenRoute = '/filters';
  /*
  final Function onSaveFilters;
  final Map<String, bool> currentFilters;

  Filters(Map<String, bool> filters,
      {required this.onSaveFilters, required this.currentFilters});
      */
  final Map<String, bool> currentFilters;
  final void Function(Map<String, bool>) onSaveFilters; // Change this line

  Filters({
    required this.currentFilters,
    required this.onSaveFilters,
  });
  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  var _InSummer = false;
  var _InWinter = false;
  var _InFamily = false;
  void initState() {
    super.initState();
    _InSummer = widget.currentFilters['summer'] ?? false;
    _InWinter = widget.currentFilters['winter'] ?? false;
    _InFamily = widget.currentFilters['families'] ?? false;
  }

  SwitchListTile BuildSwithListTile(String title, String subtitle,
      var CurrentValue, void Function(bool?) UpdateValue) {
    return SwitchListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      value: CurrentValue,
      onChanged: UpdateValue,
    );
    /*
                   (newValue) {
                    setState(() {
                      _isInSummer = newValue;
                    });
                  });
                  */
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Filters"),
          actions: [
            IconButton(
              icon: Icon(Icons.save),
              onPressed: () {
                final selectedfilters = {
                  'summer': _InSummer,
                  'winter': _InWinter,
                  'families': _InFamily,
                };
                widget.onSaveFilters(selectedfilters);
              },
            )
          ],
        ),
        drawer: AppDrawer(),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Expanded(
                child: ListView(
              children: [
                BuildSwithListTile('Summer trips only',
                    'Show trips in the summer only', _InSummer, (newValue) {
                  setState(() {
                    _InSummer = newValue ?? false;
                  });
                }),
                BuildSwithListTile('Winter trips only',
                    'Show trips in the Winter only', _InWinter, (newValue) {
                  setState(() {
                    _InWinter = newValue ?? false;
                  });
                }),
                BuildSwithListTile('Family trips only',
                    'Show trips in the Family only', _InFamily, (newValue) {
                  setState(() {
                    _InFamily = newValue ?? false;
                  });
                }),
              ],
            ))
          ],
        ));
  }
}
