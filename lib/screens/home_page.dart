import 'package:flutter/material.dart';
import 'package:templete_1/screens/departments_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    final ScrollController _scrollController = ScrollController();
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;

    final List<Map<String, dynamic>> containerData = [
      {
        "text": "Administration",
        "image": Icon(
          Icons.holiday_village,
          color: Colors.red,
        )
      },
      {
        "text": "Health",
        "image": Icon(
          Icons.health_and_safety,
          color: Colors.red,
        )
      },
      {
        "text": "Revenue ",
        "image": Icon(
          Icons.search,
          color: Colors.red,
        ),
      },
      {
        "text": "Urban Management",
        "image": Icon(
          Icons.manage_history,
          color: Colors.red,
        )
      },
      {
        "text": "Finance",
        "image": Icon(
          Icons.business,
          color: Colors.red,
        )
      },
      {
        "text": "Environment / Agri",
        "image": Icon(
          Icons.accessible_forward,
          color: Colors.red,
        ),
      },
      {
        "text": "Education",
        "image": Icon(
          Icons.cast_for_education,
          color: Colors.red,
        )
      },
      {
        "text": "Notices",
        "image": Icon(
          Icons.notification_important,
          color: Colors.red,
        )
      },
      {
        "text": "Law / Human Rights",
        "image": Icon(
          Icons.balance,
          color: Colors.red,
        )
      },
      {
        "text": "Public Construction",
        "image": Icon(
          Icons.construction,
          color: Colors.red,
        )
      },
      {
        "text": "Social Development",
        "image": Icon(
          Icons.developer_board,
          color: Colors.red,
        )
      },
    ];
    return Scaffold(
      key: _scaffoldKey,
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 236, 236, 236),
          height: heigth * 1.9,
          child: Stack(
            children: [
              // Main Container with Border Radius
              Container(
                color: Color.fromARGB(0, 255, 255, 255),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(0.9, 0.2),
                      end: Alignment.bottomLeft,
                      colors: [Colors.red, Colors.blue],
                    ),
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, width * 0.3),
                    ),
                  ),
                  height: heigth * 0.4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Positioned Image and Menu
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 35, left: 10),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                child: Image.asset(
                                  "assets/download.png",
                                  fit: BoxFit.cover,
                                  width: width * 0.5,
                                  height: heigth * 0.7,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              _scaffoldKey.currentState?.openEndDrawer();
                            },
                            child: Container(
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.menu,
                                color: Colors.white,
                                size: 45,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 10),
                        child: Text(
                          "Latest News",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14, top: 10),
                        child: Text(
                          'Departments  <   >',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // List of Containers
              Positioned(
                top: 220,
                left: 14,
                child: Container(
                  height: heigth * 0.4,
                  width: width * 0.98,
                  child: GridView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 11,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                        margin: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        child: Column(
                          children: [
                            // Display the image
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: () {
                                  switch (index) {
                                    case 0:
                                      Navigator.pushReplacement(
                                        context,
                                        Departments_Icons.route(),
                                      );
                                      break;
                                    default:
                                  }
                                },
                                child: Container(
                                  height: heigth * 0.07,
                                  width: width * 0.2,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.0),
                                        spreadRadius: 2,
                                        blurRadius: 2,
                                        offset: Offset(2, 2),
                                      ),
                                    ],
                                    borderRadius: BorderRadius.circular(15),
                                    color: Color.fromARGB(33, 255, 187, 0),
                                  ),
                                  child: containerData[index]["image"],
                                ),
                              ),
                            ),
                            // Display the text
                            Expanded(
                              child: GestureDetector(
                                onTap: () {
                                  switch (index) {
                                    case 0:
                                      Navigator.pushReplacement(
                                        context,
                                        Departments_Icons.route(),
                                      );
                                      break;
                                    default:
                                  }
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    containerData[index]["text"],
                                    style: TextStyle(fontSize: 18.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 14, top: 540),
                child: Text(
                  'Communication  <   >',
                  style: TextStyle(
                    color: Color.fromARGB(255, 88, 55, 238),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 560,
                left: 14,
                child: Container(
                  height: heigth * 0.2,
                  width: width * 1.005,
                  child: GridView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          margin: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          height: 0,
                          width: 200,
                          child: Column(
                            children: [
                              // Display the image
                              Expanded(
                                child: Container(
                                  height: 10,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(33, 255, 187, 0),
                                  ),
                                  child: containerData[index]["image"],
                                ),
                              ),
                              // Display the text
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    containerData[index]["text"],
                                    style: TextStyle(fontSize: 18.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1, childAspectRatio: 2 / 4),
                  ),
                ),
              ),
              Positioned(
                top: 720,
                left: 14,
                child: Text(
                  'Services  <   >',
                  style: TextStyle(
                    color: Color.fromARGB(255, 88, 55, 238),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 750,
                left: 14,
                child: Container(
                  height: 150,
                  width: 400,
                  child: GridView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          margin: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          height: 150,
                          width: 200,
                          child: Column(
                            children: [
                              // Display the image
                              Expanded(
                                child: Container(
                                  height: 10,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.0),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: Offset(2, 2))
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(33, 255, 187, 0),
                                  ),
                                  child: containerData[index]["image"],
                                ),
                              ),
                              // Display the text
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    containerData[index]["text"],
                                    style: TextStyle(fontSize: 18.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1, childAspectRatio: 2 / 4),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 900),
                child: Text(
                  'Information  <   >',
                  style: TextStyle(
                    color: Color.fromARGB(255, 88, 55, 238),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 920,
                left: 14,
                child: Container(
                  height: 150,
                  width: 400,
                  child: GridView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white),
                          margin: EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          height: 100,
                          width: 200,
                          child: Column(
                            children: [
                              // Display the image
                              Expanded(
                                child: Container(
                                  height: 10,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                          color: Colors.black.withOpacity(0.0),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: Offset(2, 2))
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    color: Color.fromARGB(33, 255, 187, 0),
                                  ),
                                  child: containerData[index]["image"],
                                ),
                              ),
                              // Display the text
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text(
                                    containerData[index]["text"],
                                    style: TextStyle(fontSize: 18.0),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1, childAspectRatio: 2 / 4),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14, top: 1100),
                child: Text(
                  'Other Services  <   >',
                  style: TextStyle(
                    color: Color.fromARGB(255, 88, 55, 238),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 1150,
                left: 14,
                child: Container(
                  height: 280,
                  width: 400,
                  child: GridView.builder(
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.white),
                        margin: EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        height: 100,
                        width: 100,
                        child: Column(
                          children: [
                            // Display the image
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 40,
                                width: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromARGB(33, 255, 187, 0),
                                ),
                                child: containerData[index]["image"],
                              ),
                            ),
                            // Display the text
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(6.0),
                                child: Text(
                                  containerData[index]["text"],
                                  style: TextStyle(fontSize: 18.0),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.blue],
                ),
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.transparent,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/download.png",
                      fit: BoxFit.cover,
                      width: 80,
                      height: 80,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
