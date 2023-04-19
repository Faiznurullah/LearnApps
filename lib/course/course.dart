import 'package:flutter/material.dart';
import '../model/model.dart';

class MyCourse extends StatelessWidget {
  MyCourse({super.key});

  List<ItemModel> items = [
    ItemModel(
      title: 'Belajar Html',
      subtitle: "subtitle",
      image:
          'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
    ),
    ItemModel(
      title: 'Belajar PHP',
      subtitle: "subtitle",
      image:
          'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
    ),
    ItemModel(
      title: 'Belajar Javascript',
      subtitle: "subtitle",
      image:
          'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
    ),
    ItemModel(
      title: 'Belajar CSS',
      subtitle: "subtitle",
      image:
          'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
    ),
    ItemModel(
      title: 'Belajar Golang',
      subtitle: "subtitle",
      image:
          'https://www.freecodecamp.org/news/content/images/2021/10/golang.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Course'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(items[index].title),
                subtitle: Text(items[index].subtitle),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Lihat kelas'),
                ),
                onTap: () {},
              ),
            );
          },
        ),
      ),
    );
  }
}
