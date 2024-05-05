import 'package:flutter/material.dart';
import 'package:instaclo0ne/Home_Screen.dart';
import 'package:instaclo0ne/profilepage.dart';

void main() {
  runApp(InstagramSearchClone());
}

class InstagramSearchClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Search Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SearchScreen(),
    );
  }
}

class SearchScreen extends StatelessWidget {
  // List of names
  final List<String> names = [
    'Hinata',
    'Sasuke Uchiha',
    'Kisame',
    'Jujutsu',
    'Gara',
    'Kakashi Senesi',
    'Madara',
    'Itachi Uchiha',
    'Sakura',
    'Kibo Hakamaru',
    'Shino',
    'Rock Lee',
    'Tsunade',
    // Add more names as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Add logic to handle search button tap
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 20,
              child: Icon(Icons.account_circle, size: 40),
            ),
            title: Text(names[index]), // Use the name from the list
            subtitle: Text(''),
            trailing: IconButton(
              icon: Icon(Icons.more_horiz),
              onPressed: () {
                // Add logic to handle more button tap
              },
            ),
            onTap: () {
              // Add logic to handle user tap
            },
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 30.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.home_filled),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homescreen()),
                    );
                  },
                  iconSize: 30.0,
                  color: Colors.black54,
                ),
                IconButton(
                  icon: Icon(Icons.search_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InstagramSearchClone()),
                    );
                  },
                  iconSize: 30.0,
                  color: Colors.black54,
                ),
                IconButton(
                  icon: Icon(Icons.movie_filter_rounded),
                  onPressed: () => print("Reel"),
                  iconSize: 30.0,
                  color: Colors.black54,
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () => print("Notification"),
                  iconSize: 30.0,
                  color: Colors.black54,
                ),

                // InkWell class Null safety. A rectangular/CircleAvatar area of
                // a Material that responds to touch
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InstagramProfile()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 15.0,
                    backgroundImage: AssetImage("assets/14.png"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
