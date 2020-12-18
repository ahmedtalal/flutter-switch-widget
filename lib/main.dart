import 'package:flutter/material.dart';
import 'package:flutter_switch_widget/Activities/Home.dart';
import 'package:flutter_switch_widget/RoutingModel/Routing.dart';

main(List<String> args) {
  runApp(App()) ;
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Home.ROUTE ,
      routes: route ,
    );
  }
}