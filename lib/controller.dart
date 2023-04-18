import 'package:get/get.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';

class Controller extends GetxController {
  static Controller get to => Get.find();

  List videotitle = [];
  List idList = [];
  List imgurlList = [];

  List videoList = [];

  @override
  void onInit() async {
    super.onInit();

    await videoinfo();
  }

  Future<void> videoinfo() async {
    for (int i = 0; i < videoList.length; i++) {
      String videourl = videoList[i];
      idList.add(videoList[i].substring(videourl.length - 11));
      imgurlList.add('https://img.youtube.com/vi/${idList[i]}/0.jpg');

      var video = await YoutubeExplode().videos.get(videourl);
      videotitle.add(video.title);
    }
    //print(videotitle);
  }
}
