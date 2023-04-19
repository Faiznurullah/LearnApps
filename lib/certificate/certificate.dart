import 'package:flutter/material.dart';
import '../model/certificate.dart';

class MyCertificate extends StatelessWidget {
  MyCertificate({super.key});

  List<ItemModelCertificate> items = [
    ItemModelCertificate(
      title: 'Belajar Html',
      credential: "Course-Xvb982Db",
    ),
    ItemModelCertificate(
      title: 'Belajar PHP',
      credential: "Course-GGhjPP45",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Certificate'),
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
                subtitle: Text(items[index].credential),
                trailing: ElevatedButton(
                  onPressed: () {},
                  child: Text('Lihat certificate'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
