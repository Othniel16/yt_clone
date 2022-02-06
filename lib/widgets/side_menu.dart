import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yt_clone/exports.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  final ScrollController _controller = ScrollController();

  final _footerStyle = const TextStyle(
    color: Colors.black54,
    fontWeight: FontWeight.w600,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Get.width * 0.187,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 8.0),
            child: ListTile(
              leading: InkWell(
                onTap: () => Get.back(),
                child: const Icon(Icons.menu, color: Colors.black),
              ),
              title: Image.asset('assets/youtube-logo.jpeg'),
            ),
          ),
          Expanded(
            child: Material(
              type: MaterialType.card,
              child: ListView(
                controller: _controller,
                padding: const EdgeInsets.only(
                  right: 20.0,
                  top: 12.0,
                  bottom: 20.0,
                ),
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(color: Colors.grey[300]),
                        child: ListTile(
                          leading: const Icon(Icons.home_filled,
                              color: Colors.black),
                          title: const Text('Home'),
                          onTap: () {},
                        ),
                      ),
                      ListTile(
                        leading: const Icon(CupertinoIcons.compass,
                            color: Colors.black),
                        title: const Text('Explore'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.video_collection_outlined,
                          color: Colors.black,
                        ),
                        title: const Text('Subscriptions'),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Divider(),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const Icon(
                          Icons.playlist_add_rounded,
                          color: Colors.black,
                        ),
                        title: const Text('Library'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.replay,
                          color: Colors.black,
                        ),
                        title: const Text('History'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.play_circle_outline,
                          color: Colors.black,
                        ),
                        title: const Text('Your videos'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          CupertinoIcons.clock,
                          color: Colors.black,
                        ),
                        title: const Text('Watch later'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.black,
                        ),
                        title: const Text('Liked videos'),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Divider(),
                  ),
                  ListTile(
                    dense: true,
                    title: Text(
                      'SUBSCRIPTIONS',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.red[300],
                        ),
                        title: const Text('Joma Tech'),
                        trailing: const Icon(
                          CupertinoIcons.dot_radiowaves_left_right,
                          color: Colors.red,
                          size: 14.0,
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.orange[300],
                        ),
                        title: const Text('5-Minute Crafts'),
                        trailing: Container(
                          height: 4.0,
                          width: 4.0,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            shape: BoxShape.circle,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.yellow[300],
                        ),
                        title: const Text('Action Lab Shorts'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.green[300],
                        ),
                        title: const Text('Adele'),
                        trailing: Container(
                          height: 4.0,
                          width: 4.0,
                          decoration: BoxDecoration(
                            color: Colors.blue[900],
                            shape: BoxShape.circle,
                          ),
                        ),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: CircleAvatar(
                          radius: 14.0,
                          backgroundColor: Colors.blue[300],
                        ),
                        title: const Text('Adobe Photoshop'),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Divider(),
                  ),
                  ListTile(
                    dense: true,
                    title: Text(
                      'MORE FROM YOUTUBE',
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: const Icon(CupertinoIcons.gamecontroller,
                            color: Colors.black),
                        title: const Text('Gaming'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          CupertinoIcons.dot_radiowaves_left_right,
                          color: Colors.black,
                        ),
                        title: const Text('Live'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.sports_score_sharp,
                          color: Colors.black,
                        ),
                        title: const Text('Sports'),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Divider(),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading:
                            const Icon(Icons.settings, color: Colors.black),
                        title: const Text('Settings'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.flag_outlined,
                          color: Colors.black,
                        ),
                        title: const Text('Report history'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.help_outline_rounded,
                          color: Colors.black,
                        ),
                        title: const Text('Help'),
                        onTap: () {},
                      ),
                      ListTile(
                        leading: const Icon(
                          Icons.feedback_outlined,
                          color: Colors.black,
                        ),
                        title: const Text('Send feedback'),
                        onTap: () {},
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.0),
                    child: Divider(),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: [
                        Text('About', style: _footerStyle),
                        Text('Press', style: _footerStyle),
                        Text('Copyright', style: _footerStyle),
                        Text('Contact us', style: _footerStyle),
                        Text('Creators', style: _footerStyle),
                        Text('Advertise', style: _footerStyle),
                        Text('Developers', style: _footerStyle),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      children: [
                        Text('Terms', style: _footerStyle),
                        Text('Privacy Policy & Safety', style: _footerStyle),
                        Text('How YouTube works', style: _footerStyle),
                        Text('Test new features', style: _footerStyle),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(
                      '© 2022 Google LLC',
                      style: TextStyle(color: Colors.grey, fontSize: 12.0),
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
