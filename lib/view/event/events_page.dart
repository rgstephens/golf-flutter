import 'package:flutter/material.dart';
import 'events_query.dart';

class EventsPage extends StatelessWidget {
  static const BottomNavigationBarItem navItem = BottomNavigationBarItem(
    icon: Icon(Icons.star),
    label: 'Events',
  );

  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const ListTile(title: Text('Updating list of events')),
        Expanded(child: EventList()),
      ],
    );
  }
}
