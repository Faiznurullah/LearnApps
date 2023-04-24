import 'package:flutter/material.dart';
import 'isVideo.dart';
import 'isDesc.dart';

class detail extends StatefulWidget {
  String img;
  detail(this.img);

  @override
  State<detail> createState() => _detailState();
}

class _detailState extends State<detail> {
  bool isVideo = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.img,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              color: Color.fromARGB(169, 173, 13, 236),
              size: 32,
            ),
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFFF1F6F9),
              ),
              child: Icon(
                Icons.play_arrow,
                size: 36,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              widget.img,
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Created by Deo Program",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Colors.black.withOpacity(0.7),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "55 Video",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w800,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Color(0xFFF1F6F9),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    color: isVideo
                        ? Color.fromARGB(169, 173, 13, 236)
                        : Color.fromARGB(169, 173, 13, 236).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideo = true;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 35,
                        ),
                        child: Text(
                          "Video",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideo
                        ? Color.fromARGB(169, 173, 13, 236)
                        : Color.fromARGB(169, 173, 13, 236).withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideo = false;
                        });
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 35,
                        ),
                        child: Text(
                          "Description",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            isVideo ? ScreenVideo() : ScreenDesc(),
          ],
        ),
      ),
    );
  }
}
