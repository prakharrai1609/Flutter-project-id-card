import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text("Prakhar's  ID"),
        centerTitle: true,
        elevation: 0.0,
      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/me.png'),
                radius: 50,
              ),
            ),

            Divider(
                height: 60 ,
                color: Colors.grey[800],
            ),

            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 15,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 10.0),

            Text('Prakhar Rai',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2,
                fontSize: 30,
              ),
            ),

            SizedBox(height: 20.0),

            Text(
              'College',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 18,
                color: Colors.grey,
              ),
            ),

            SizedBox(height: 10.0),

            Text('JECRC Jaipur',
              style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2,
                fontSize: 30,
              ),
            ),

            SizedBox(height: 40.0),

          Row(
            children: [
              Icon(
                Icons.mail,
                color: Colors.grey[300],
              ),

              SizedBox(width: 15),

              Text('rai.prakhar1609@gmail.com' ,
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 20,
                ),
              )
            ],
          ) ,

          SizedBox(height: 20),

          Row(
            children: [
              Icon(
                Icons.call,
                color: Colors.grey[300],
              ),

              SizedBox(width: 15),

              Text('+91 - 7023996659' ,
                style: TextStyle(
                  color: Colors.grey[300],
                  fontSize: 20,
                ),
              )
            ],
          ),

            SizedBox(height: 20),

            Row(
              children: [
                Text('My level :' ,

                style: TextStyle(
                  color: Colors.amber,
                  letterSpacing: 2,
                  fontSize: 30,
                ),
                ),

                SizedBox(width: 30),

                Text('$counter',
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2,
                    fontSize: 30,
                  ),

                ),
              ],
            ),

          ],
        ),

      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (counter < 10) {
              counter++;
              print('Pressed!');
            } else {
              print('Counter reached limit!');
            }
          });

        },
        child: Text(
          '+',
          style: TextStyle(
            fontSize: 40,
          ),
        ),
        backgroundColor: Colors.grey,
      ),

    );
  }
}
