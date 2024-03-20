
import 'package:flutter/material.dart';
import 'package:templete_1/screens/home_page.dart';
import 'package:templete_1/screens/newsfeed.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    NewsFeed(),
    Text('Index 2: Notifications'),
    Text('Index 3: Profile'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
      floatingActionButton: buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  BottomAppBar buildBottomNavigationBar() {
    return BottomAppBar(
      color: Colors.blue[900],
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            buildIconButton(Icons.home, 0, iconSize: 40.0),
            buildIconButton(Icons.newspaper, 1, iconSize: 40.0),
            SizedBox(width: 40), // The dummy child
            buildIconButton(Icons.notifications, 2, iconSize: 40.0),
            buildIconButton(Icons.person, 3, iconSize: 40.0),
          ],
        ),
      ),
    );
  }

  IconButton buildIconButton(IconData icon, int index,
      {double iconSize = 24.0}) {
    return IconButton(
      icon: Icon(
        icon,
        color: Colors.white,
        size: iconSize,
      ),
      onPressed: () {
        _onItemTapped(index);
      },
    );
  }

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      onPressed: () {
        // Add your FloatingActionButton onPressed function here
      },
      child: Stack(
        children: [
          CircleAvatar(
            radius: 50,
          ),
          Center(
            child: Container(
              width: 50.0, // Set the size of the image container
              height: 50.0, // Set the size of the image container
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: ClipOval(
                child: Image(
                  height: 50,
                  image: AssetImage(
                    "assets/floaticon.jpg",
                  ),
                  fit: BoxFit.contain, // Adjust the image inside the circle
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
