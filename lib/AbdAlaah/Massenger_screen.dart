import 'package:flutter/material.dart';

class Masenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children:[
               CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage('assets/images/car.png'),
            ),
            SizedBox(width: 10,),
            Text('Mohamed sabry',style: TextStyle(
              color: Colors.black,
              fontSize: 15),
              ),
              
            ]
          ),
          actions: [
            IconButton(onPressed: (){},
              icon:
                 CircleAvatar(
                   radius: 20,
                   backgroundColor: Colors.blue,
                   child: 
                       Icon(Icons.camera_alt))
              ),
              IconButton(onPressed: (){},
               icon: CircleAvatar
               (radius: 20,
                 child: 
                 Icon(Icons.edit))
               )
          ],
        ),
      
      ),
    );
  }
}