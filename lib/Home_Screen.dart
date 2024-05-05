import 'package:flutter/material.dart';
import 'package:instaclo0ne/ContentPage.dart';
import 'package:instaclo0ne/messagelog.dart';
import 'package:instaclo0ne/profilepage.dart';
import 'package:instaclo0ne/searchscreen.dart';

class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  Widget firstlist(String imgVal, String text) {
    return Container(
      width: 80.0,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 35.0,
              backgroundImage: AssetImage(
                imgVal,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.add_box_outlined,
          color: Colors.black54,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(
                "Instagram",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.black87,
                    fontFamily: "Pacifico",
                    fontSize: 35.0),
              ),
            ),
          ],
        ),
        actions: <Widget>[
          IconButton(
            color: Colors.black54,
            icon: Icon(Icons.message_rounded),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Chatlog()),
              );
            },
          ),
        ],
      ),

      // This Container Use For Story List
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 108.0,
              color: Colors.white,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  firstlist("assets/1.png", "Sasuke Uchiha"),
                  firstlist("assets/2.png", "Jujustsu"),
                  firstlist("assets/3.png", "Fairy Tail"),
                  firstlist("assets/4.png", "Gara "),
                  firstlist("assets/5.png", "Kakashi Senesi"),
                  firstlist("assets/6.png", "Madara"),
                  firstlist("assets/7.png", "Itachi Uchiha"),
                  firstlist("assets/8.png", "Sakura"),
                  firstlist("assets/9.png", "Kibo"),
                  firstlist("assets/10.png", "Kibo Hakamaru"),
                  firstlist("assets/11.png", "Shino"),
                  firstlist("assets/12.png", "Sai"),
                  firstlist("assets/13.png", "Hinata"),
                  firstlist("assets/14.png", "Naruto"),
                  firstlist("assets/15.png", "Lee"),
                  firstlist("assets/16.png", "Pain"),
                  firstlist("assets/17.png", "Tsunade"),
                  firstlist("assets/18.png", "Iruka Senesi"),
                  firstlist("assets/19.png", "Asuma Senesi"),
                  firstlist("assets/20.png", "Shikamaru"),
                ],
              ),
            ),
          ),

          //This Section Is For Content Page
          Container(
            height: 2.0,
            color: Colors.white.withOpacity(0.1),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                ContentPage(
                  key: Key(''),
                  userName: "Sasuke Uchiha",
                  userImage: "assets/1.png",
                  image: "assets/1.png",
                ),
                ContentPage(
                  key: Key(''),
                  userName: "Kisame",
                  userImage: "assets/2.png",
                  image: "assets/2.png",
                ),
                ContentPage(
                  key: Key(''),
                  userName: "Jujutsu",
                  userImage: "assets/3.png",
                  image: "assets/3.png",
                ),
                ContentPage(
                  key: Key(''),
                  userName: "Gara",
                  userImage: "assets/4.png",
                  image: "assets/4.png",
                ),
                ContentPage(
                  key: Key(''),
                  userName: "Kakashi Senesi",
                  userImage: "assets/5.png",
                  image: "assets/5.png",
                ),
                ContentPage(
                  key: Key(''),
                  userName: "Madara",
                  userImage: "assets/6.png",
                  image: "assets/6.png",
                ),
                ContentPage(
                  key: Key(''),
                  userName: "Itachi Uchiha",
                  userImage: "assets/7.png",
                  image: "assets/7.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Sakura",
                  userImage: "assets/8.png",
                  image: "assets/8.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Kibo",
                  userImage: "assets/9.png",
                  image: "assets/9.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Kibo Hakamaru",
                  userImage: "assets/10.png",
                  image: "assets/10.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Shino",
                  userImage: "assets/11.png",
                  image: "assets/11.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Sai",
                  userImage: "assets/12.png",
                  image: "assets/12.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Hinata",
                  userImage: "assets/13.png",
                  image: "assets/13.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Naruto",
                  userImage: "assets/14.png",
                  image: "assets/14.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Rock Lee",
                  userImage: "assets/15.png",
                  image: "assets/15.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Pain",
                  userImage: "assets/16.png",
                  image: "assets/16.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Tsunade",
                  userImage: "assets/17.png",
                  image: "assets/17.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Iruka Senesi",
                  userImage: "assets/18.png",
                  image: "assets/18.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Asuma Senesi",
                  userImage: "assets/19.png",
                  image: "assets/19.png",
                ),
                ContentPage(
                  key: Key('value'),
                  userName: "Shikamaru",
                  userImage: "assets/20.png",
                  image: "assets/20.png",
                ),
              ],
            ),
          ),
        ],
      ),

      // This Widgets Is Use For Making BottomAppBar Of Instagram
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
                  onPressed: () => print("Home"),
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
