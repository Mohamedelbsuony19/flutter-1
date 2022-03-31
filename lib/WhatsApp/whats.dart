import 'package:flutter/material.dart';

class whats extends StatefulWidget{
  TextEditingController contrlolText=TextEditingController();
  String newText='';

  @override
  State<whats> createState() => _whatsState();
}

class _whatsState extends State<whats> {
  @override
  Widget build(BuildContext context) {
    return(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            appBar: AppBar( backgroundColor: Colors.black,
              leading: Icon(Icons.arrow_back),
              title: Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/car.png'),
                  ),
                  SizedBox(width: 20,),
                  Text('Person')
                  ,Spacer()
                ],
              ),
              actions: [
                Icon(Icons.videocam , size: 30,),
                SizedBox(width: 20,)
                ,Icon(Icons.call),
                SizedBox(width: 20,),
                Icon(Icons.more_vert_outlined)
              ],


            ),
            body: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fitWidth
                  )
              ),
              child: Column(
                children: [
                  Row(

                    children: [
                      Container(
                        margin: EdgeInsets.all(20)

                        ,child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/car.png'),
                      ),
                      ),
                      Container(
                        width: 250,
                        padding: EdgeInsets.all(10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(
                                color: Colors.white
                            )
                        ),
                        child: Text(widget.newText, style: TextStyle(color: Colors.white , fontSize: 20),),

                      )
                    ],
                  ),
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Container(
                        width: 250,
                        margin: EdgeInsets.only(left: 60 , right: 20),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            border: Border.all(color: Colors.white)
                        ),
                        child: Text('Thx, i\'m fine ', style: TextStyle(
                            color: Colors.white , fontSize: 20
                        ),),
                      ),
                      Container(
                        child: CircleAvatar(
                          radius: 25,
                          backgroundImage: AssetImage('assets/images/car.png'),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(7)
                          , decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(40))
                            ,border: Border.all(
                            color: Colors.white
                        )
                        ),
                          child: TextFormField(
                            controller:widget.contrlolText ,
                            style:TextStyle(color: Colors.white,fontSize: 20  ),
                            decoration: InputDecoration(
                                hintText: 'Type a Massage' ,
                                hintStyle:TextStyle(
                                    color: Colors.white , fontSize: 20
                                ),
                                prefixIcon: Icon(Icons.sentiment_dissatisfied ,color: Colors.white, size: 30,),
                                suffixIcon: Icon(Icons.attach_file , color: Colors.white, size: 30,)

                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(

                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(color: Colors.white)
                          ),
                          child: CircleAvatar(radius: 30,
                            backgroundColor: Colors.black,
                            child: IconButton(
                              onPressed: (){
                             widget.newText=widget.contrlolText.text;

                              },
                              icon: Icon(Icons.send),),
                          ),
                        ),
                      )
                    ],
                  ),

                ],
              ),

            ),
          ),
        )
    );


  }
}
