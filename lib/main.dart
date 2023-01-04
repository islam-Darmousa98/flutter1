import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}
class NinjaCard extends StatefulWidget {
  const NinjaCard({Key? key}) : super(key: key);

  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int lvl=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ninja card"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            lvl+=1;
          });
        },
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(backgroundImage: AssetImage('assets/car.jpg'),
                radius: 40,
              ),
            ),
            Divider(height: 60,
            ),
            Text(
              'name',style: TextStyle(
              color: Colors.blueAccent,
              letterSpacing: 1
            ),
            ),
          SizedBox(height: 10,)
            , Text(
              'islam darmousa',style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                letterSpacing: 1
            ),
            ),
            SizedBox(height: 20,),
            Text(
              'level',style: TextStyle(
                color: Colors.blueAccent,
                letterSpacing: 1
            ),
            ),
            SizedBox(height: 10,)
            , Text(
              '$lvl',style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20,
                letterSpacing: 1
            ),
            ),SizedBox(height: 10,)
            ,Row(
              children: [
                Icon(
                    Icons.email,
                color: Colors.blueAccent[200],),
              SizedBox(width: 10,),
                Text('mal@mail.com',
                style: TextStyle(
                  color: Colors.lightBlue[100],
                  fontSize: 20,
                ),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  int count=0;
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



