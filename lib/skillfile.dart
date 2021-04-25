import 'package:flutter/material.dart';

class SkillCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          Icons.build,
          color: Colors.black,
        ),
        title: Column(
          children: [
            Text("SKILLS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                )),
            Row(
              children: [
                myskill(txt:"C"),
                myskill(txt:"C++"),
                myskill(txt:"Java"),
                myskill(txt:"Dart"),
                myskill(txt:"Flutter"),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class myskill extends StatelessWidget {

  String txt;

  myskill({@required this.txt});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(txt,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )
        ),
      ),
    );
  }
}

