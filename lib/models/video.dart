class Video {
  final String title, thumbnail, channelTitle, channelId, viewCount, createdAt, duration;

  Video({
    required this.title,
    required this.thumbnail,
    required this.channelTitle,
    required this.channelId,
    required this.viewCount,
    required this.createdAt,
    required this.duration,
  });

  factory Video.fromMap(var object) {
    return Video(
      title: object['snippet']['title'],
      thumbnail: object['snippet']['thumbnails']['maxres']['url'],
      channelTitle: object['snippet']['channelTitle'],
      channelId: object['snippet']['channelId'],
      viewCount: object['statistics']['viewCount'],
      createdAt: object['snippet']['publishedAt'],
      duration: object['contentDetails']['duration'],
    );
  }
}
