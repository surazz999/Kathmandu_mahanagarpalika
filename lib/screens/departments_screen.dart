import 'package:flutter/material.dart';
import 'package:templete_1/screens/bottom_navigation_bar.dart';

class Departments_Icons extends StatelessWidget {
  const Departments_Icons({super.key});

  static Route route() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaaryAnimation) =>
          const Departments_Icons(),
      transitionsBuilder: (context, animation, secondaaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.green,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Adminisration Department"),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BottomNavigationBarExample()));
                },
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              )
            ],
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.symmetric(horizontal: 80, vertical: 80),
            child: Text("Hello"),
          )
        ],
      ),
    ));
  }
}
