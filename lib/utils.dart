import 'package:timeago/timeago.dart' as timeago;

class Utils {
  static String numberFormat(int number) {
    String num = number.toString();
    int len = num.length;

    if (number >= 1000 && number < 1000000) {
      return num.substring(0, len - 3) + 'K';
    } else if (number >= 1000000 && number < 1000000000) {
      if (int.parse(num[1]) == 0) {
        return num[0] + 'M';
      } else {
        return num.substring(0, len - 6) +
            '.' +
            num.substring(len - 6, 1 + (len - 6)) +
            'M';
      }
    } else if (number > 1000000000) {
      return num.substring(0, len - 9) +
          '.' +
          num.substring(len - 9, 1 + (len - 9)) +
          'B';
    } else {
      return num.toString();
    }
  }

  static elapsedDays(String publishedAt) {
    final createdAt = DateTime.parse(publishedAt);
    return timeago.format(createdAt);
  }

  static parseDuration(String duration) {
    String minutes = '0';
    String seconds = '0';

    if (duration.contains('M')) {
      var hourOff = duration.substring(2);
      minutes = hourOff.split('M').first;
      seconds = hourOff.split('M').last.substring(0, 2);
    } else {
      seconds = duration.substring(2, 4);
    }

    return '$minutes:$seconds';
  }
}
