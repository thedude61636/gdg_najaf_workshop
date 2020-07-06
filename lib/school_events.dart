import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SchoolEventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F0F0),
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text(
          "School Events",
          style: TextStyle(fontWeight: FontWeight.w900),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          MyDesignCard(
            child: Container(
              margin: EdgeInsets.all(16),
              child: Column(
                children: [
                  //image
                  CircleAvatar(
                    radius: 46,
                    backgroundColor: Color(0xffF28A89),
                    child: CircleAvatar(
                      radius: 42,
                      backgroundImage:
                          NetworkImage("https://picsum.photos/200/200"),
                    ),
                  ),
                  //title

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "St. Xavier School",
                      style: Theme.of(context)
                          .textTheme
                          .headline6
                          .copyWith(color: Color(0xff5E4F8E)),
                    ),
                  ),
                  // address
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Color(0xffE0908D),
                        ),
                        Text(
                          "576 Sebastin arcade, NY, 12456",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Color(0xff5E4F8E)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 64,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: MyDesignButton(
                            text: "380\nFollowers",
                            textColor: Color(0xff6A6B9E),
                            color: Color(0xffF0F0F0),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 16,
                        ),
                        Expanded(
                          child: MyDesignButton(
                            text: "Follow",
                            color: Color(0xff40B561),
                            onPressed: () {},
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void appbar(String text, {Widget title}) {}
}

class MyDesignCard extends StatelessWidget {
  final Widget child;

  const MyDesignCard({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30))),
    );
  }
}

class MyDesignButton extends StatelessWidget {
  final String text;

  final Color textColor;

  final Function onPressed;

  final Color color;

  const MyDesignButton(
      {Key key,
      @required this.text,
      @required this.textColor,
      @required this.onPressed,
      @required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 42),
      child: Text(
        text,
        textAlign: TextAlign.center,
      ),
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      onPressed: onPressed,
      color: color,
    );
  }
}
