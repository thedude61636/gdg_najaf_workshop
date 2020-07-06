import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stles extends StatelessWidget {
  final String title;

  const Stles({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello World"),
      ),
    );
  }
}

class Stful extends StatefulWidget {
  @override
  _StfulState createState() => _StfulState();
}

class _StfulState extends State<Stful> {
  String title = "Hello World";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: FlatButton(
          child: Text("Change Title"),
          onPressed: () {

            setState(() {
              title = "Ali";
            });

          },
        ),
      ),
    );
  }

  void function(String va){


  }
}
