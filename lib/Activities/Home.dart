import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  static const ROUTE = "/home" ;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var changes = false ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: changes ? Colors.black12 : null ,
      appBar: AppBar(
        title: Text(
          "Switch widget" ,
          style: TextStyle(
            color: changes ? Colors.white : null ,
          ),
        ),
        backgroundColor: changes ? Colors.blue : Colors.orange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Dart Mode" ,
              style: TextStyle(
                color: changes ? Colors.white : Colors.red ,
                fontSize: 20 ,
              ),
            ) ,
            Switch(
              value: changes ,
              onChanged: (value) {
                setState(() {
                  changes = value ;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}