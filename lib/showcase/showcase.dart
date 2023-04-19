import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyShowcase extends StatelessWidget {
  MyShowcase({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Showcase'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(
                        'https://cdn.dribbble.com/users/1753227/screenshots/16342195/media/584cad7d6e4fb67483e3c88fbb7f685b.png?compress=1&resize=400x300',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Desain Ojek Apps',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lato(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Lihat showcase'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
