import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yt_clone/exports.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: const SideMenu(),
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.white,
              height: Get.height,
              width: Get.width * 0.09,
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Container(
                    alignment: Alignment.topCenter,
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    height: Get.height * 0.06,
                    child: InkWell(
                      onTap: () {
                        _key.currentState!.isDrawerOpen
                            ? Get.back()
                            : _key.currentState!.openDrawer();
                      },
                      hoverColor: Colors.transparent,
                      child: const Icon(CupertinoIcons.bars),
                    ),
                  ),
                  const Expanded(child: MenuBar()),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 17,
            child: Column(
              children: [
                const SizedBox(height: 10.0),
                const Padding(
                  padding: EdgeInsets.only(right: 40.0),
                  child: Header(),
                ),
                const Divider(),
                const FilterStrip(),
                const SizedBox(height: 8.0),
                Container(height: 1.0, color: Theme.of(context).dividerColor),
                Expanded(
                  child: FutureBuilder<dynamic>(
                    future: Methods.getPopularVideos(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData &&
                          snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      List videos = snapshot.data;

                      return GridView.builder(
                        shrinkWrap: true,
                        itemCount: videos.length,
                        itemBuilder: (context, index) {
                          Video video = Video.fromMap(videos[index]);
                          return VideoCard(video: video);
                        },
                        padding: const EdgeInsets.fromLTRB(20, 20, 40, 40),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 40.0,
                          crossAxisSpacing: 18.0,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
