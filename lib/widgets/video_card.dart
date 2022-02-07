import 'package:flutter/material.dart';
import 'package:yt_clone/exports.dart';
import 'package:yt_clone/utils.dart';

class VideoCard extends StatefulWidget {
  final Video video;
  const VideoCard({Key? key, required this.video}) : super(key: key);

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
      child: SizedBox(
        width: Get.width * 0.25,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MouseRegion(
              onEnter: (event) {
                setState(() => hovering = true);
              },
              onExit: (event) {
                setState(() => hovering = false);
              },
              child: Container(
                height: Get.width * 0.12,
                color: Colors.grey.withOpacity(0.3),
                child: Stack(
                  children: [
                    CachedNetworkImage(
                      imageUrl: widget.video.thumbnail,
                      fit: BoxFit.cover,
                      width: Get.width * 0.25,
                      height: Get.width * 0.12,
                    ),
                    Align(
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                            )
                          : Container(
                              padding: const EdgeInsets.all(3.0),
                              margin: const EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                color: Colors.black87,
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                              child: Text(
                                Utils.parseDuration(widget.video.duration),
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 12.0),
                              ),
                            ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12.0),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: FutureBuilder<dynamic>(
                future: Methods.getChannelById(widget.video.channelId),
                builder: (context, snapshot) {
                  if (!snapshot.hasData &&
                      snapshot.connectionState == ConnectionState.waiting) {
                    return CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.3),
                    );
                  }
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      child: CachedNetworkImage(
                        imageUrl: snapshot.data['items'].first['snippet']
                            ['thumbnails']['default']['url'],
                        placeholder: (context, url) =>
                            Container(color: Colors.grey[300]),
                        errorWidget: (context, url, error) =>
                            Container(color: Colors.grey[300]),
                      ),
                    ),
                  );
                },
              ),
              title: Text(
                widget.video.title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 14.0),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(backgroundColor: Colors.transparent),
              subtitle: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.video.channelTitle,
                    style: const TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 6.0),
                  Text(
                    '${Utils.numberFormat(int.parse(widget.video.viewCount))} views  •  ${Utils.elapsedDays(widget.video.createdAt)}',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
