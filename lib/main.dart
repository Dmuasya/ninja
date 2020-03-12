import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int ninjaLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja ID Card'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 121;
          });
        },
        backgroundColor: Colors.cyanAccent,
        child: Icon(Icons.add),

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 20.0, 30.0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/zuck.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height:50.0,
              color: Colors.cyanAccent,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 2.0
              )
            ),
            SizedBox(height:10.0),
            Text(
                'Dennis Muasya',
                style: TextStyle(
                  color: Colors.cyanAccent,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height:30),
            Text(
                'CURRENT NINJA LEVEL',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height:10.0),
            Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.cyanAccent,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                )
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.cyanAccent,
                ),
                SizedBox(width: 20.0,),
                Text(
                  'mutisyadennis@gmail.com',
                  style: TextStyle(
                    color: Colors.cyanAccent
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

    );
  }
}



