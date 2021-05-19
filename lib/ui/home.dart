import 'package:flutter/material.dart';
import 'package:tensorflow_objectdetection/image_classification.dart/homepage.dart';
import 'package:tensorflow_objectdetection/ui/home_view.dart';
import 'package:tensorflow_objectdetection/ui/how_to_use.dart';

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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          margin: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              Image.asset("assets/menu.png"),
              SizedBox(
                height: 20,
              ),
              Text(
                "Menu",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeView()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      Text(
                        " Real Time Detection",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyHomePage()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.photo,
                        color: Colors.white,
                      ),
                      Text(
                        "  Image Classification",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  height: 50,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HowToUse()));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                      Text("  How To Use",
                          style: TextStyle(color: Colors.white))
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
