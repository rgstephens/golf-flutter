import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:universal_platform/universal_platform.dart';
import 'package:golf/view/graphql_view.dart';
import 'package:golf/view/event/events_page.dart';

//String get host {
// https://github.com/flutter/flutter/issues/36126#issuecomment-596215587
// if (UniversalPlatform.isAndroid) {
//   return '10.0.2.2:1337';
// } else {
//   return '127.0.0.1:1337';
// }
//return 'https://strapi.stephens.link/graphql';
//}

final graphqlEndpoint = 'https://strapi.stephens.link/graphql';
final subscriptionEndpoint = 'ws://strapi.stephens.link/subscriptions';

void main() async {
  await initHiveForFlutter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClientProvider(
      uri: graphqlEndpoint,
      subscriptionUri: subscriptionEndpoint,
      child: MaterialApp(
        title: 'Golf Trip Manager',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Golf Trip Manager'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
//  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _navigateTo(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      // drawer: NavDrawer(
      //   eventsPage: EventsPage(),
      // ),
      body: [EventsPage()][_selectedIndex],
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     EventsPage.navItem,
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _navigateTo,
      // ),
    );
  }
}
