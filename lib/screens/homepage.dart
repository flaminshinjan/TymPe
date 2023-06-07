import 'package:flutter/material.dart';
import 'package:tympe_app/screens/auth_pages/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Image.asset('assets/logo.png', height: 35),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/pp.png',
                    height: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/notifications.png',
                    height: 30,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  icon: Icon(Icons.logout_outlined,
                      color: Colors.white, size: 30),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.black, Color.fromARGB(255, 10, 31, 76)]),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromARGB(255, 10, 31, 76),
        shape: CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Container(
          height: 56.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Image.asset(
                  'assets/house.png',
                  height: 35,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Image.asset(
                  'assets/list.png',
                  height: 30,
                ),
                onPressed: () {
                  // Action when the home button is pressed
                },
              ),

              // Spacer for the floating action button
              IconButton(
                icon: Image.asset('assets/dues.png',
                    height: 28, color: Colors.white),
                onPressed: () {},
              ),
              IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/profile.png',
                    height: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
