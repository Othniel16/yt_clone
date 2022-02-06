import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:yt_clone/exports.dart';

class Methods {
  static final http.Client _client = http.Client();

  static getChannelById(String channelId) async {
    String accessUrl =
        'https://youtube.googleapis.com/youtube/v3/channels?part=snippet%2CcontentDetails%2Cstatistics&id=$channelId&key=$key';
    http.Response response = await _client.get(Uri.parse(accessUrl));
    return jsonDecode(response.body);
  }

  static Future<List> getPopularVideos() async {
    String accessUrl =
        'https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics&chart=mostPopular&regionCode=US&key=$key';
    http.Response response = await _client.get(Uri.parse(accessUrl));
    var data = jsonDecode(response.body);
    return data['items'];
  }
}
