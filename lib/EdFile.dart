import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EdCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.school,
          color: Colors.black,
        ),
        title: Column(
          children: [
            Text(
              "EDUCATION",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Mytext(val: " Indira Gandhi Delhi Technical University",),
            Mytext(val: "Bachelor in Technology",),
            Mytext(val:"Information Technology",),
            Mytext(val: "3rd Year",),


          ],
        ),
      ),
    );
  }
}

class Mytext extends StatelessWidget {

  String val;
  double mysize;
  Mytext({@required this.val,this.mysize=15});

  @override
  Widget build(BuildContext context) {
    return Text(
      val,
      style: TextStyle(
        fontSize: mysize,
        color: Colors.black,
      ),
    );
  }
}


