class Video {
  final String title, thumbnail, channelTitle, channelId, viewCount, createdAt;

  Video({
    required this.title,
    required this.thumbnail,
    required this.channelTitle,
    required this.channelId,
    required this.viewCount,
    required this.createdAt,
  });

  factory Video.fromMap(var object) {
    return Video(
      title: object['snippet']['title'],
      thumbnail: object['snippet']['thumbnails']['default']['url'],
      channelTitle: object['snippet']['channelTitle'],
      channelId: object['snippet']['channelId'],
      viewCount: object['contentDetails']['duration'],
      createdAt: object['snippet']['publishedAt'],
    );
  }
}
