import 'package:flutter/material.dart';

class item extends StatelessWidget {
String name;
String phone;
bool visible;
item({this.name='', this.phone='', this.visible=false});
  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Container(

        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30)

        ),
        child: Column(
crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Name : $name'),
            Text('Phone :$phone ')
          ],
        ),
      ),
    );
  }
}
