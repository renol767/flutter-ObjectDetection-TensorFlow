import 'dart:io';
import 'package:image/image.dart' as img;
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'classifier.dart';
import 'classifier_quant.dart';
import 'package:logger/logger.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Classifier _classifier;

  var logger = Logger();

  File _image;
  final picker = ImagePicker();

  Image _imageWidget;

  img.Image fox;

  Category category;

  @override
  void initState() {
    super.initState();
    _classifier = ClassifierQuant();
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = File(pickedFile.path);
      _imageWidget = Image.file(
        _image,
        width: 300,
        height: 300,
      );

      _predict();
    });
  }

  void _predict() async {
    img.Image imageInput = img.decodeImage(_image.readAsBytesSync());
    var pred = _classifier.predict(imageInput);

    setState(() {
      this.category = pred;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text('Image Classification', style: TextStyle(color: Colors.white)),
      ),
      body: ListView(children: [
        Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Center(
              child: _image == null
                  ? Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text('No image selected.'),
                      ],
                    )
                  : Container(
                      constraints: BoxConstraints(
                          maxHeight: MediaQuery.of(context).size.height / 2),
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          _imageWidget,
                        ],
                      ),
                    ),
            ),
            SizedBox(
              height: 36,
            ),
            Text(
              category != null ? category.label : '',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              category != null
                  ? 'Confidence: ${category.score.toStringAsFixed(3)}'
                  : '',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        tooltip: 'Pick Image',
        child: Icon(Icons.add_a_photo),
      ),
    );
  }
}
