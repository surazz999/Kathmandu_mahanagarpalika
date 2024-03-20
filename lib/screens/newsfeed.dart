import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  const NewsFeed({super.key});

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        children: [
          Container(
            color: Colors.red,
            height: 200,
            width: 400,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(2, 2))
                      ],
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white),
                  child: Column(
                    children: [
                      // Display the image
                      Container(
                        height: 10,
                        width: 80,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.0),
                                spreadRadius: 2,
                                blurRadius: 2,
                                offset: Offset(2, 2))
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(20, 255, 17, 0),
                        ),
                        child: containerData[index]["image"],
                      ),
                      // Display the text
                      Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: Text(
                          containerData[index]["text"],
                          style: TextStyle(fontSize: 18.0),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, childAspectRatio: 3 / 2),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
            color: Colors.amber,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemCount: containerData.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: Colors.amber,
                    child: Center(child: Text('$index')),
                  );
                }),
          ),
          Container(
            height: MediaQuery.of(context).size.width - 28,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                  width: 200, // Adjust the width as needed
                  child: Column(
                    children: [
                      Container(
                        height: 80, // Adjust the height as needed
                        width: 80, // Adjust the width as needed
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.0),
                              spreadRadius: 2,
                              blurRadius: 2,
                              offset: Offset(2, 2),
                            )
                          ],
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(20, 255, 17, 0),
                        ),
                        child: containerData[index]["image"],
                      ),
                      SizedBox(height: 8.0),
                      Text(
                        containerData[index]["text"],
                        style: TextStyle(fontSize: 18.0),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
