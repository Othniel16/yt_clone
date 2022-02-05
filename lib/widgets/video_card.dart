import 'package:flutter/material.dart';
import 'package:yt_clone/exports.dart';

class VideoCard extends StatefulWidget {
  const VideoCard({Key? key}) : super(key: key);

  @override
  State<VideoCard> createState() => _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  bool hovering = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      onTap: () {},
      child: MouseRegion(
        onEnter: (event) {
          setState(() => hovering = true);
        },
        onExit: (event) {
          setState(() => hovering = false);
        },
        child: SizedBox(
          width: Get.width * 0.25,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: Get.width * 0.12,
                color: Colors.grey.withOpacity(0.3),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: hovering
                      ? Container(
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: const Text(
                            'Keep hovering to play',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.all(3.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: const Text(
                            '2:47',
                            style:
                                TextStyle(color: Colors.white, fontSize: 12.0),
                          ),
                        ),
                ),
              ),
              const SizedBox(height: 12.0),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: Image.asset('assets/fireship.jpeg'),
                  ),
                ),
                title: const Text(
                  'Session vs Token Authentication in 100 seconds',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14.0),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading:
                    const CircleAvatar(backgroundColor: Colors.transparent),
                subtitle: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Fireship',
                      style: TextStyle(color: Colors.grey),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      '367K views  •  1 year ago',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
