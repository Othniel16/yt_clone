import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuBar extends StatelessWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            hoverColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.home_filled),
                  SizedBox(height: 8.0),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(CupertinoIcons.compass),
                  SizedBox(height: 8.0),
                  Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.video_collection_outlined),
                  SizedBox(height: 8.0),
                  Text(
                    'Subscriptions',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.playlist_add_rounded),
                  SizedBox(height: 8.0),
                  Text(
                    'Library',
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
