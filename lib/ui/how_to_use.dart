import 'package:flutter/material.dart';

class HowToUse extends StatefulWidget {
  HowToUse({Key key}) : super(key: key);

  @override
  _HowToUseState createState() => _HowToUseState();
}

class _HowToUseState extends State<HowToUse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How To Use'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(
            height: 20,
          ),
          Text("Real Time Detection",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("1. Pilih Menu Real Time Object Detection"),
              Text("2. Arahkan Camera ke Objek yang Akan di Deteksi"),
              Text(
                  "3. Jika Objek berhasil di deteksi, \n maka akan memunculkan output nama objek dan tingkat kemiripan"),
              SizedBox(
                height: 20,
              ),
              Text("Berikut Contoh Penggunaanya : "),
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'assets/RealtimeDetection.jpeg',
                width: 500,
                height: 500,
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text("Image Classification",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("1. Pilih Menu Image Classification"),
            Text(
                "2. Tap Ikon Camera untuk memilih gambar yang akan di deteksi dari galeri"),
            Text("3. Pilih Gambar"),
            Text(
                "4. Maka akan Muncul output nama objek yang berada di gambar dan tingkat kemiripanya"),
            SizedBox(
              height: 20,
            ),
            Text("Berikut Contoh Penggunaanya : "),
            SizedBox(
              height: 10,
            ),
            Image.asset(
              'assets/ImageClassification.jpeg',
              width: 500,
              height: 500,
            )
          ]),
        ],
      ),
    );
  }
}
