import 'package:flutter/material.dart';
import 'package:quiz_app/data/user.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      leading: Icon(Icons.menu),
      elevation: 0,
      title: Text('Programmers Quiz'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.all(16),
            child: buildWelcome(username),
        ),
      ),
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade900, Colors.blueGrey.shade900],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
          ),
        ),
      ),
      actions: [
        Icon(Icons.search),
        SizedBox(width: 12),
      ],
    )
  );

  Widget buildWelcome(String username) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Hello',
        style: TextStyle(fontSize: 16, color: Colors.white),
      ),
      Text(
        username,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),
      ),
    ],
  );


}