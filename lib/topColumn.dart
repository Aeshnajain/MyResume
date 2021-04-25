import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TopColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: MyAvatar(),
          flex: 3,
        ),
        Expanded(
          flex: 7,
          child: Column(
            children: [
              MyText("Aeshna Jain", 35),
              MyText("Flutter Developer"),
              ContactCard(
                mytxt: "aeshna040btece18@igdtuw.ac.in",
              ),
              ContactCard(
                myicon: Icons.phone,
                mytxt: "09090909090",
              )
            ],
          ),
        )
      ],
    );
  }
}

class ContactCard extends StatelessWidget {
  //IconData myicon=Icons.mail;
  IconData myicon;
  String mytxt;
  ContactCard({this.myicon = Icons.mail, @required this.mytxt});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 20,
      ),
      child: Row(
        children: [
          Icon(
            myicon,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
          Text(mytxt),
        ],
      ),
    );
  }
}

class MyText extends StatelessWidget {
  String mystring;
  double size;
  MyText(String ms, [double s = 20]) {
    this.mystring = ms;
    this.size = s;
  }
  @override
  Widget build(BuildContext context) {
    return Text(
      mystring,
      style: TextStyle(
        fontFamily: 'Pacifico',
        fontSize: size,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class MyAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 60.0,
      backgroundColor: Colors.black,
      backgroundImage: AssetImage('images/dp1.jpeg'),
    );
  }
}

