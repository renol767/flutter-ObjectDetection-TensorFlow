import 'package:flutter/material.dart';
import 'package:tensorflow_objectdetection/ui/home_view.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Object Detection TensorFlow"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                  "https://miro.medium.com/max/968/1*xZz4EG0cah2uD7gP8IbRBQ.png"),
              Text(
                "Menu",
                style: TextStyle(fontSize: 20),
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(Icons.timer), Text("Real Time Detection")],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
