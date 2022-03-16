import 'package:flutter/material.dart';
import 'package:untitled5/X_O/board_buttun.dart';

class xo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          headline3: TextStyle(
            fontSize: 10,
            color: Colors.black
          )
        )
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child:
             Text('X_O Game',style: TextStyle(
               fontWeight: FontWeight.bold
             ),)
             ),
        ),
        body: 
        Column(
          children:[
             Expanded(
               child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,
                         children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Player One (x)',
                      style: Theme.of(context).textTheme.headline3,
                      ),
                      Text('',style: TextStyle(
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Text('Player One (x)',
                      style: Theme.of(context).textTheme.headline3,
                      ),
                      Text('',style: TextStyle(
                      ),),
                    ]
                  ),
                )
                         ],
                       ),
             ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                button(),
                button(),
                button(),
                
              ],
            ),
          )
          ,
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                button(),
                button(),
                button(), 
              ],
            ),
          )
          ,
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                button(),
                button(),
                button(),
              ],
            ),
          )
          ]
        ),
        
        
      )
      ,
      
    );
  }
}