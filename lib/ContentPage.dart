import 'package:flutter/material.dart';

class ContentPage extends StatelessWidget {
  final String userImage;
  final String userName;
  final String image;

  const ContentPage(
      {required Key key,
      required this.userImage,
      required this.userName,
      required this.image})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 40.0,
                      width: 40.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60.0),
                        child: Image.asset(
                          userImage,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    userName,
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: Icon(
                Icons.more_horiz,
                color: Colors.black54,
              ),
            ),
          ],
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width,
          child: Image.asset(
            image,
            filterQuality: FilterQuality.high,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const SizedBox(
                    width: 16.0,
                  ),
                  Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black54,
                    size: 25.0,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.black54,
                    size: 25.0,
                  ),
                  const SizedBox(
                    width: 16.0,
                  ),
                  Icon(
                    Icons.send,
                    color: Colors.black54,
                    size: 25.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.bookmark_border,
                color: Colors.black54,
                size: 25.0,
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Liked by Naruto and others",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Sasuke Work Progress",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "Naruto Comments.....",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: Text(
            "10 Minutes Ago",
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
      ],
    );
  }
}
