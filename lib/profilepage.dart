import 'package:flutter/material.dart';
import 'package:instaclo0ne/Home_Screen.dart';
import 'package:instaclo0ne/searchscreen.dart';

void main() {
  runApp(InstagramProfile());
}

class InstagramProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // Add logic to handle menu action
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 16),
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/14.png'),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'Naruto Uzumaki',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                'Bio',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '10',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Posts',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '1M',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '200',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: List.generate(
                9,
                (index) => Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAx_iMNrI2Pm7MmanDZx54IiYc5_SfAv1_wDFysUgyXQ&s', // Replace with your image URLs
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
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
                      MaterialPageRoute(builder: (context) => InstagramSearchClone()),
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
