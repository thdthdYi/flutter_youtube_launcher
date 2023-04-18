import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MediaModel extends StatelessWidget {
  final String title;
  final String id;
  final String imgurl;
  final String url;

  const MediaModel(
      {required this.title,
      required this.id,
      required this.imgurl,
      required this.url,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      InkWell(
          child: SizedBox(
            width: 200,
            child: Image.network(imgurl),
          ),
          onTap: () {
            launchUrl(Uri.parse(url));
          }),
      Expanded(
        child: Text(
          title,
          softWrap: true,
        ),
      ),
    ]);
  }
}
