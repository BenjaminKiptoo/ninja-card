import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          title: Text(
            'Ninja card',
            style: TextStyle(fontSize: 20.0, color: Colors.amberAccent),
          ),
          backgroundColor: Colors.grey[850],
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 40.0,
                color: Colors.grey[400],
              ),
              Text(
                'NAME',
                style: TextStyle(
                    color: Colors.grey, fontSize: 15.0, letterSpacing: 2.0),
              ),
              SizedBox(
                height: 6.0,
              ),
              Text(
                'Chun-Li',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 30.0,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'NINJA LEVEL',
                style: TextStyle(
                    color: Colors.grey, fontSize: 15.0, letterSpacing: 2.0),
              ),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 30.0,
                    letterSpacing: 2.0),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'kiptoo925@gmal.com',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
