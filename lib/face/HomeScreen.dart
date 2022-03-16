import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/face/Posts.dart';

class Home extends StatelessWidget {
static const String ROUTE_NAME= 'Home';
  @override
  Widget build(BuildContext context) {
    return(
    Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
        child: Column(
          children: [
            Expanded(
              
              child:
              ListView.builder(
                scrollDirection: Axis.horizontal,
                  itemBuilder: (context , index){
                    return
                      Container(
                        margin: EdgeInsets.all(15),
                      child: (
                          Stack(
                            children: [
                              ClipRRect(child
                                  : Image.asset('assets/images/Story.jpg'),
                              borderRadius: BorderRadius.all(Radius.circular(20)),
                              ),
                              CircleAvatar(
                                radius: 20,
                                child: Icon(Icons.person),
                              ),
                              Positioned(
                                child: Text('Mohamed', style: TextStyle(
                                  color: Colors.white , fontWeight: FontWeight.bold
                                ),
                                ),
                                bottom: 0,
                                left: 0,
                              )


                            ],
                          )
                      ),
                    );

                  },
                itemCount: 10,
                  ),
              flex: 2,
            ),
            Expanded(child:
            ListView.builder(itemBuilder:(context , index){
                  return Post();
            },
              itemCount: 10,

            ),
              flex: 8,)
        ]
        ),
      ),
    )
    );
  }
}
