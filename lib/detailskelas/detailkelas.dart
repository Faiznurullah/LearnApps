import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:accordion/controllers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class MyDetailKelas extends StatefulWidget {
  MyDetailKelas({super.key});

  @override
  State<MyDetailKelas> createState() => _MyDetailKelasState();
}

class _MyDetailKelasState extends State<MyDetailKelas> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        setState(() {});
      });
  }

  Widget build(BuildContext context) {
    final _headerStyle = const TextStyle(
        color: Color(0xffffffff), fontSize: 15, fontWeight: FontWeight.bold);
    final _contentStyleHeader = const TextStyle(
        color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.w700);
    final _contentStyle = const TextStyle(
        color: Color(0xff999999), fontSize: 14, fontWeight: FontWeight.normal);
    final _loremIpsum =
        '''Lorem ipsum is typically a corrupted version of 'De finibus bonorum et malorum', a 1st century BC text by the Roman statesman and philosopher Cicero, with words altered, added, and removed to make it nonsensical and improper Latin.''';

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Detail Course'),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(
            children: [
              Center(
                child: _controller.value.isInitialized
                    ? AspectRatio(
                        aspectRatio: _controller.value.aspectRatio,
                        child: VideoPlayer(_controller),
                      )
                    : Container(),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _controller.value.isPlaying
                        ? _controller.pause()
                        : _controller.play();
                  });
                },
                child: Icon(
                  _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Lorem'),
              SizedBox(
                height: 10,
              ),
              Accordion(
                maxOpenSections: 2,
                headerBackgroundColorOpened: Colors.black54,
                scaleWhenAnimating: true,
                openAndCloseAnimation: true,
                headerPadding:
                    const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
                sectionOpeningHapticFeedback: SectionHapticFeedback.heavy,
                sectionClosingHapticFeedback: SectionHapticFeedback.light,
                children: [
                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.food_bank, color: Colors.white),
                    header: Text('Company Info', style: _headerStyle),
                    content: DataTable(
                      sortAscending: true,
                      sortColumnIndex: 1,
                      dataRowHeight: 40,
                      showBottomBorder: false,
                      columns: [
                        DataColumn(
                            label: Text('ID', style: _contentStyleHeader),
                            numeric: true),
                        DataColumn(
                            label: Text('Description',
                                style: _contentStyleHeader)),
                        DataColumn(
                            label: Text('Price', style: _contentStyleHeader),
                            numeric: true),
                      ],
                      rows: [
                        DataRow(
                          cells: [
                            DataCell(Text('1',
                                style: _contentStyle,
                                textAlign: TextAlign.right)),
                            DataCell(
                                Text('Fancy Product', style: _contentStyle)),
                            DataCell(Text(r'$ 199.99',
                                style: _contentStyle,
                                textAlign: TextAlign.right))
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('2',
                                style: _contentStyle,
                                textAlign: TextAlign.right)),
                            DataCell(
                                Text('Another Product', style: _contentStyle)),
                            DataCell(Text(r'$ 79.00',
                                style: _contentStyle,
                                textAlign: TextAlign.right))
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('3',
                                style: _contentStyle,
                                textAlign: TextAlign.right)),
                            DataCell(Text('Really Cool Stuff',
                                style: _contentStyle)),
                            DataCell(Text(r'$ 9.99',
                                style: _contentStyle,
                                textAlign: TextAlign.right))
                          ],
                        ),
                        DataRow(
                          cells: [
                            DataCell(Text('4',
                                style: _contentStyle,
                                textAlign: TextAlign.right)),
                            DataCell(Text('Last Product goes here',
                                style: _contentStyle)),
                            DataCell(Text(r'$ 19.99',
                                style: _contentStyle,
                                textAlign: TextAlign.right))
                          ],
                        ),
                      ],
                    ),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon:
                        const Icon(Icons.contact_page, color: Colors.white),
                    header: Text('Contact', style: _headerStyle),
                    content: Wrap(
                      children: List.generate(
                          30,
                          (index) => const Icon(Icons.contact_page,
                              size: 30, color: Color(0xff999999))),
                    ),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.computer, color: Colors.white),
                    header: Text('Jobs', style: _headerStyle),
                    content: const Icon(Icons.computer,
                        size: 200, color: Color(0xff999999)),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.movie, color: Colors.white),
                    header: Text('Culture', style: _headerStyle),
                    content: const Icon(Icons.movie,
                        size: 200, color: Color(0xff999999)),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.people, color: Colors.white),
                    header: Text('Community', style: _headerStyle),
                    content: const Icon(Icons.people,
                        size: 200, color: Color(0xff999999)),
                  ),
                  AccordionSection(
                    isOpen: false,
                    leftIcon: const Icon(Icons.map, color: Colors.white),
                    header: Text('Map', style: _headerStyle),
                    content: const Icon(Icons.map,
                        size: 200, color: Color(0xff999999)),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 90,
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Kembali'),
                ),
              )
            ],
          ),
        ),
      ),
    );
    @override
    void dispose() {
      super.dispose();
      _controller.dispose();
    }
  }
}
