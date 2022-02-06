import 'package:flutter/material.dart';
import 'package:yt_clone/exports.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const Home(),
      theme: ThemeData(dividerColor: Colors.grey[350]),
      debugShowCheckedModeBanner: false,
    );
  }
}
