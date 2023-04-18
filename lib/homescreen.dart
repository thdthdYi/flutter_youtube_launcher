import 'package:flutter/material.dart';

import 'controller.dart';
import 'mediamodel.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('미디어', style: TextStyle(color: Colors.blue)),
          backgroundColor: Colors.white,
        ),
        body: SafeArea(
          child: ListView.separated(
              itemCount: Controller.to.videoList.length,
              itemBuilder: (BuildContext context, int idx) {
                return MediaModel(
                  title: Controller.to.videotitle[idx],
                  id: Controller.to.idList[idx],
                  imgurl: Controller.to.imgurlList[idx],
                  url: Controller.to.videoList[idx],
                );
              },
              separatorBuilder: (BuildContext context, int idx) =>
                  const Divider(
                    height: 10.0,
                    color: Colors.grey,
                  )),
        ));
  }
}
