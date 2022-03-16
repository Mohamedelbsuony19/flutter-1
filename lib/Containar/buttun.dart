import 'package:flutter/material.dart';

class buttun extends StatelessWidget {
  String number;
  Function onpress;
  buttun(this.number,this.onpress);
  @override
  Widget build(BuildContext context) {
    return Expanded(
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                   Expanded(
                     child:
                     Container(
                       margin: EdgeInsets.all(3),
                       child: ElevatedButton(onPressed: ()
                       {
                         if(number=='=')
                           {
                             onpress();
                           }else
                          onpress(number);
                       }, 
                       child: Text
                         ('$number',
                                    style: TextStyle(fontSize: 28),),
                       ),
                     ),
                   ),
                 ],
               ),
             );

  }
}