import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yt_clone/exports.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Image.asset('assets/youtube-logo.jpeg'),
        ),
        const Spacer(),
        Expanded(
          flex: 9,
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  width: Get.width * 0.5,
                  height: Get.height * 0.055,
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          cursorWidth: 1.0,
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            isDense: true,
                            hintText: 'Search',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.blue[800]!),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.3)),
                              borderRadius: BorderRadius.circular(2.0),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: Get.height * 0.055,
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: const Icon(CupertinoIcons.search),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.07),
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(2.0),
                            bottomRight: Radius.circular(2.0),
                          ),
                          border:
                              Border.all(color: Colors.grey.withOpacity(0.3)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.05),
                  borderRadius: BorderRadius.circular(100.0),
                ),
                child: const Icon(Icons.mic),
              ),
            ],
          ),
        ),
        const Spacer(),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.video_call_outlined,
                size: 30.0,
                color: Colors.black87,
              ),
              const Icon(Icons.grid_view_outlined,
                  size: 24.0, color: Colors.black87),
              const Icon(CupertinoIcons.bell, color: Colors.black87),
              CircleAvatar(backgroundColor: Colors.grey.withOpacity(0.3)),
            ],
          ),
        ),
      ],
    );
  }
}
