import 'package:flutter/material.dart';
import 'second_page.dart';

void main() => runApp(MaterialApp(
  home: HelloCard(),
));

class HelloCard extends StatefulWidget {

  @override
  _HelloCardState createState() => _HelloCardState();
}

class _HelloCardState extends State<HelloCard> {

  int lastEducation = 0;
  int index = 0;

  final pages = [
    HelloCard(),
    SecondPage()
  ];

  static const String edu0 = 'None';
  static const String edu1 = 'Primary School';
  static const String edu2 = 'Middle School';
  static const String edu3 = 'High School';
  static const String edu4 = "Bachelor's Degree";
  static const String edu5 = "Master's Degree";
  static const String edu6 = "Doctor's Degree";

  String generateEducation() {
    switch(lastEducation) {
      case 0:
        return edu0;
      case 1:
        return edu1;
      case 2:
        return edu2;
      case 3:
        return edu3;
      case 4:
        return edu4;
      case 5:
        return edu5;
      case 6:
        return edu6;
      default:
        return 'UNKNOWN';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Hello ID Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (int index) => setState(() {
          this.index = index;
          print(index);
        }),
        backgroundColor: Colors.grey[800],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Page 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Page 2',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              lastEducation++;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800]
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/img/dp.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 60.0,
              color: Colors.grey[800],
              thickness: 1.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Jason Yapri',
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'LAST EDUCATION',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              generateEducation(),
              style: TextStyle(
                color: Colors.amberAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10.0),
                Text(
                    'hello@jasonyapri.com',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 18.0,
                      letterSpacing: 1.0,
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
