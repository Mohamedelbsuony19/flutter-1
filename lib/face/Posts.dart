import 'package:flutter/material.dart';

class Post extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
child: Column(
   crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Row(
      children: [
        Container(
          decoration: BoxDecoration(

          ),
          child: CircleAvatar(
            radius: 25,
            child: Icon(Icons.person ,color: Colors.white,),
          ),
          padding: EdgeInsets.all(10),
        ),
        SizedBox(width: 10,),
        Column(
          children: [
            Text('Owner',style: TextStyle(
            fontSize: 15 , fontWeight: FontWeight.bold
            ),
            ),
            Row(
              children: [
                Text('3h',style: TextStyle(fontWeight: FontWeight.bold),),
                Icon(Icons.public )
              ],
            ),
            SizedBox(height: 10,),

          ],
        )
      ],

    ),
    SizedBox(height: 20,),
    Text('My Post', style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 22),

      ),
    SizedBox(height: 20,),
    Row(
      children: [
        Container(child: Text('100'),
        padding: EdgeInsets.all(10),),
        Image.asset('assets/images/like.jpg' ,
          height: 40,
          width: 40,),
        Spacer(),
        Text('100 Comments'),

      ],
    ),
    Divider(
      color: Colors.black,
    ),
    Row(
      children: [
        Row(
          children: [
            Image.asset('assets/images/singleLike.jpg',height: 20,width: 20,),
            SizedBox(width: 10,),
            Text('Like')
          ],
        ),
        Spacer(),
        Row(
          children: [
            Image.asset('assets/images/comment.jpg',height: 20,width: 20,),
            SizedBox(width: 10,),
            Text('Comment')
          ],
        ),
        Spacer(),
        Row(
          children: [
            Image.asset('assets/images/share.png',height: 20,width: 20,),
            SizedBox(width: 10,),
            Text('Share')
          ],
        ),


      ],
    ),
    Divider(
      color: Colors.black,
    )
  ],
),
    );
  }
}
