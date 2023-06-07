import 'package:flutter/material.dart';

class BottomNavigationWithFAB extends StatefulWidget {
  @override
  _BottomNavigationWithFABState createState() =>
      _BottomNavigationWithFABState();
}

class _BottomNavigationWithFABState extends State<BottomNavigationWithFAB> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation Bar with FAB'),
      ),
      body: Center(
        child: Text('Current Index: $_currentIndex'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                setState(() {
                  _currentIndex = 1;
                });
              },
            ),
            SizedBox(width: 48.0), // Adjust the width as needed
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {
                setState(() {
                  _currentIndex = 2;
                });
              },
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {
                setState(() {
                  _currentIndex = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
