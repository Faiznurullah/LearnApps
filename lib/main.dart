import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'model/model.dart';
import 'account/account.dart';
import 'setting/setting.dart';
import 'course/course.dart';
import 'certificate/certificate.dart';
import 'transaction/transaction.dart';
import 'showcase/showcase.dart';
import 'notifikasi/notifikasi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      home: NewWidget(),
    );
  }
}

class NewWidget extends StatefulWidget {
  @override
  State<NewWidget> createState() => _NewWidgetState();
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<ItemModel> items = [
    ItemModel(
      title: 'Belajar Html',
      subtitle: "Mari belajar bersama",
      image:
          'https://www.freecodecamp.org/news/content/images/2021/08/ht-ml.jpeg',
    ),
    ItemModel(
      title: 'Belajar PHP',
      subtitle: "Mari belajar bersama",
      image:
          'https://www.freecodecamp.org/news/content/images/size/w2000/2022/10/explode.png',
    ),
    ItemModel(
      title: 'Belajar Javascript',
      subtitle: "Mari belajar bersama",
      image:
          'https://www.freecodecamp.org/news/content/images/2021/06/javascriptfull.png',
    ),
    ItemModel(
      title: 'Belajar CSS',
      subtitle: "Mari belajar bersama",
      image:
          'https://media.istockphoto.com/id/1363205770/photo/word-css-on-wooden-desk-and-laptop.jpg?b=1&s=170667a&w=0&k=20&c=K-1iJ5rmC-MyC40RGWDt_Ro6CaIsMuOTboTFo49uoLk=',
    ),
    ItemModel(
      title: 'Belajar Golang',
      subtitle: "Mari belajar bersama",
      image:
          'https://www.freecodecamp.org/news/content/images/size/w2000/2022/10/golang.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Learning with us',
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyNotifikasi(),
                        ));
                  },
                  icon: Icon(Icons.notifications),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 360,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue[200],
                    ),
                    child: Center(
                      child: Icon(
                        size: 32,
                        Icons.play_arrow,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Lets join class',
                    style: GoogleFonts.lato(
                      color: Colors.green,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            'Recomended Kelas',
            style: GoogleFonts.adamina(
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 30),
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: Image.network(
                                items[index].image,
                                fit: BoxFit.fill,
                                width: 40,
                                height: 40,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              items[index].title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    items[index].subtitle,
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.visible,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                crossAxisSpacing: 0.0,
                mainAxisSpacing: 5,
                mainAxisExtent: 264,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          'Search kelas',
          style: GoogleFonts.lato(
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Search kelas',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/img/404.png',
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                margin: EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                      'https://cdn.hswstatic.com/gif/play/0b7f4e9b-f59c-4024-9f06-b3dc12850ab7-1920-1080.jpg',
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'William Jose',
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Belajar itu harus, pintar itu bonus',
                    style: GoogleFonts.lato(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: ListTile(
              tileColor: Colors.black12,
              leading: Icon(Icons.person),
              title: Text('Personal account'),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyAccount()));
                },
                icon: Icon(Icons.arrow_right),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ListTile(
              tileColor: Colors.black12,
              leading: Icon(Icons.settings),
              title: Text('Setting'),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MySetting()));
                },
                icon: Icon(Icons.arrow_right),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ListTile(
              tileColor: Colors.black12,
              leading: Icon(Icons.document_scanner_outlined),
              title: Text('My course'),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyCourse()));
                },
                icon: Icon(Icons.arrow_right),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ListTile(
              tileColor: Colors.black12,
              leading: Icon(Icons.checklist),
              title: Text('My certificate'),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyCertificate()));
                },
                icon: Icon(Icons.arrow_right),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ListTile(
              tileColor: Colors.black12,
              leading: Icon(Icons.money),
              title: Text('My trancaction'),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyTransaction()));
                },
                icon: Icon(Icons.arrow_right),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            child: ListTile(
              tileColor: Colors.black12,
              leading: Icon(Icons.movie_creation),
              title: Text('My showcase'),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MyShowcase()));
                },
                icon: Icon(Icons.arrow_right),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _NewWidgetState extends State<NewWidget> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
