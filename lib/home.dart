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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          Container(
            color: Colors.white,
            height: Get.height,
            width: Get.width * 0.07,
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                Container(
                  alignment: Alignment.topCenter,
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
          Expanded(
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
                  child: GridView.builder(
                    padding: const EdgeInsets.fromLTRB(20, 20, 40, 40),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      mainAxisSpacing: 40.0,
                      crossAxisSpacing: 18.0,
                    ),
                    itemCount: 24,
                    itemBuilder: (context, index) => const VideoCard(),
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
