import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNotifikasi extends StatelessWidget {
  MyNotifikasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              color: Color.fromARGB(76, 70, 67, 67),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    FlutterLogo(),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        'Pembayaran sejumlah Rp.10000 sudah kami terima dan silahkan akses kelas premium kami ya.',
                        style: GoogleFonts.lato(),
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(76, 70, 67, 67),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    FlutterLogo(),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        'Pembayaran sejumlah Rp.20000 sudah kami terima dan silahkan akses kelas premium kami ya.',
                        style: GoogleFonts.lato(),
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                        softWrap: true,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              color: Color.fromARGB(76, 70, 67, 67),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    FlutterLogo(),
                    SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        'Pembayaran sejumlah Rp.15000 sudah kami terima dan silahkan akses kelas premium kami ya.',
                        style: GoogleFonts.lato(),
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                        softWrap: true,
                      ),
                    )
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
