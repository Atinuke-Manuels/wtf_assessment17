import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              myImageContainer("assets/first.jpg"),
              myImageContainer("assets/second.jpg"),
              myImageContainer("assets/third.jpg"),
              myImageContainer("assets/fourth.jpg"),
              myImageContainer("assets/fifth.jpg"),
              myImageContainer("assets/sixth.jpg"),
            ],
          ),
          SizedBox(height: 16.0), // Add margin between GridView and TextButton
          TextButton(
            onPressed: () {
              _showThankYouDialog(context);
            },
            child: Text(
              "Click Me!!!!",
              style: TextStyle(fontSize: 24, color: Colors.red),
            ),
          )
        ],
      ),
    );
  }

  Widget myImageContainer(String myImage) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.asset(myImage, fit: BoxFit.cover),
      ),
    );
  }

  _showThankYouDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Thank You!"),
          content: Text("I am glad to finally be learning flutter!!!",
            style: TextStyle(color: Colors.orange.shade800),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
