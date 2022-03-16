import 'package:flutter/material.dart';
// ignore: empty_constructor_bodies
class one{
  int ?number;
  String ?name;
  String ?phone;

  one({required this.number,required this.name,required this.phone});
}

class model extends StatelessWidget {
  List<one>two=[
    one(number: 1, name: 'mohamed', phone: '01285679505'),
    one(number: 2, name: 'ahmed', phone: '01254958745'),
    one(number: 2, name: 'zeiad', phone: '01254958745'),
    one(number: 2, name: 'ans', phone: '01254958745'),
    one(number: 1, name: 'mohamed', phone: '01285679505'),
    one(number: 2, name: 'ahmed', phone: '01254958745'),
    one(number: 2, name: 'zeiad', phone: '01254958745'),
    one(number: 2, name: 'ans', phone: '01254958745'),
    one(number: 1, name: 'mohamed', phone: '01285679505'),
    one(number: 2, name: 'ahmed', phone: '01254958745'),
    one(number: 2, name: 'zeiad', phone: '01254958745'),
    one(number: 2, name: 'ans', phone: '01254958745'),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child:
           Text('Mohamed',style: TextStyle(
            fontSize: 25
           ),
           )
           ),
        ),
        body: ListView.separated(
          itemBuilder: (context,index)=>test(two[index]),
          separatorBuilder:(context,index)=>Container(
            margin: EdgeInsets.only(left: 75),
            width: double.infinity,
            color: Colors.grey[300],
            height: 1,
          ) ,
          itemCount: (two.length)
          ),
      
      
      ),
    );
  }
  Widget test(usermodel) =>Padding(
           padding: const EdgeInsets.all(10.0),
           child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                child: Text('${usermodel.number}',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
              ),
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('${usermodel.name}',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                  SizedBox(height: 7,),
                  Text('${usermodel.phone}',style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold
                  ),
                  
                  )
                ],
              ),
              Container(
                height: 1,
                color: Colors.black,
              )
            ],
        ),
         );
}