import 'package:flutter/material.dart';
import 'package:golf/model/event.dart';

class DisplayEvents extends StatefulWidget {
  const DisplayEvents({super.key, events})
      : events = events ?? List<Map<String, dynamic>>;
  //const DisplayEvents({Key? key, events}) : super(key: key);

  final List<Map<String, dynamic>> events;

  @override
  _DisplayEventsState createState() => _DisplayEventsState();
}

class _DisplayEventsState extends State<DisplayEvents> {
  List<Map<String, dynamic>> get events => widget.events;

  Widget displayRaw(Map<String, dynamic> raw) => Card(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          //height: 150,
          child: Text(displayEvent(raw)),
        ),
      );

  /*
  // for debugging
  @override
  initState() {
    super.initState();
      print(
        'DisplayEvents.initState() called on $this.\n'
        'this should only happen ONCE on this page, regardless of fetchMore calls, etc.',
      );
  }
  @override
  didUpdateWidget(old) {
    super.didUpdateWidget(old);
      print(
        'DisplayEvents.didUpdateWidget() called on $this.\n'
        'this can happen REPEATEDLY due to fetchMore, etc.',
      );
  }
  */

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      child: ListView(
        children: events.map<Widget>(displayRaw).toList(),
      ),
    );
  }
}
