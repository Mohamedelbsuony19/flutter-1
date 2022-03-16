import 'package:flutter/material.dart';

class one2 extends StatefulWidget {
  @override
  State<one2> createState() => _oneState();
}

class _oneState extends State<one2> {
  int data=0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
         home: Scaffold(
           appBar: AppBar(
             
             title: 
             Center(
               child: Text(
                 'Add & Delete',
                 ),
             )
           ),
           body: Center(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
               Text('$data', style: 
               TextStyle(
                 fontSize: 22,
                 fontWeight: FontWeight.bold
               ),
               ),
               SizedBox(height: 20,),
               FloatingActionButton(
                 onPressed: (){
                   data++;
                   setState(() {
                     
                   });
                 },
                 child:
                 Icon(Icons.add, color: Colors.black,) ,
                 )
             ],
             ),
           ),
         ),      
    );
  }
}