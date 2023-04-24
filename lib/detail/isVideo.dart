import 'package:flutter/material.dart';

class ScreenVideo extends StatelessWidget {
  ScreenVideo({super.key});

  List videos = [
    "Pengenalan flutter",
    "Intall flutter",
    "Widget-widget flutter",
    "Widget Teks flutter",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: videos.length,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: index == 0
                    ? Color.fromARGB(169, 173, 13, 236)
                    : Color.fromARGB(169, 173, 13, 236).withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.play_circle,
                color: Colors.white,
                size: 32,
              ),
            ),
            title: Text(videos[index]),
            subtitle: Text('20 min 34 sec'),
          );
        });
  }
}
