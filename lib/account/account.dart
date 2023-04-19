import 'package:flutter/material.dart';
import '../setting/setting.dart';

class MyAccount extends StatelessWidget {
  MyAccount({super.key});

  TextEditingController _controller =
      TextEditingController(text: 'William Jose');

  TextEditingController _controller1 =
      TextEditingController(text: 'Belejar itu harus, pintar itu bonus');

  TextEditingController _controller2 =
      TextEditingController(text: 'Street Tuan Muda Number: 33');

  TextEditingController _controller3 =
      TextEditingController(text: 'Programmer');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                width: 100,
                height: 100,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                      'https://thumbs.dreamstime.com/b/smart-person-eyewear-man-official-clothes-stands-against-white-background-studio-165962936.jpg',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            TextField(
              readOnly: true,
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Full name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              readOnly: true,
              controller: _controller1,
              decoration: InputDecoration(
                labelText: 'Motto Vision',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              readOnly: true,
              controller: _controller2,
              decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              readOnly: true,
              controller: _controller3,
              decoration: InputDecoration(
                labelText: 'Work',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 35,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MySetting()));
                },
                child: Text('Edit profile account'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
