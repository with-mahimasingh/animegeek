import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int likes=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen[100],
      appBar: AppBar(
        title: Text("Portfolio"),
        centerTitle: true,
        backgroundColor: Colors.green[600],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            likes+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green[700],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        
          children: <Widget>[
            
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/zoro.jpg'),
                radius: 50.0,
              ),
            ),
            Divider(
                height: 70,
                color: Colors.grey,
            ),
            //SizedBox(height:20.0),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
              ),
              SizedBox(height:10.0),
              Text(
              "Roronoa Zoro",
              style: TextStyle(
                color: Colors.black87,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height:30.0),
               Text(
              "OCCUPATION",
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2,
              ),
              ),
              SizedBox(height:10.0),
              Text(
              "Swordsman, Pirate, Bounty Hunter (former)",
              style: TextStyle(
                color: Colors.black87,
                letterSpacing: 2,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              ),
              SizedBox(height:30.0),
               
              Row(
               children: <Widget>[
                 Icon(
                   Icons.favorite,
                   color: Colors.red[800],
                   ),
                   SizedBox(width:10.0),
                   Text(
                     "$likes",
                     style: TextStyle(
                      color: Colors.black87,
                       letterSpacing: 2,
                       fontSize: 20,
                       fontWeight: FontWeight.bold,                    
                        ),
                   ),
               ],
             ),
            
            SizedBox(height:30.0),
             Row(
               children: <Widget>[
                 Icon(
                   Icons.mail,
                   color: Colors.green[800],
                   ),
                   SizedBox(width:10.0),
                   Text(
                     "zorochan@strawhats.com",
                     style: TextStyle(
                          color: Colors.black87,
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