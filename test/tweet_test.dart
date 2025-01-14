import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:tweet_ui/models/api/v1/tweet.dart';

void main() {
  test('if tweetView is not null', () async {
    final file = new File('test_resources/tweet_1_photo.json');
    final tweet = TweetV1Response.fromRawJson(await file.readAsString());

    expect(tweet.entities.media.length, 1);
  });
}
