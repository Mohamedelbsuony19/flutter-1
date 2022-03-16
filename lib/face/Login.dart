import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled5/face/HomeScreen.dart';
import 'package:untitled5/main.dart';




class appFace extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return(
        MaterialApp(
          debugShowCheckedModeBanner: false,
          routes:{
            Login.ROUTE_NAME:(context)=>Login(),
            Home.ROUTE_NAME:(context)=>Home()
          },
          initialRoute: Login.ROUTE_NAME,
        )
    );

  }
}
class Login extends StatelessWidget {
  static String ROUTE_NAME='Login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Container(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Spacer(flex: 4,),
            Image.asset('assets/images/face.png', height: 60,width: 60,),


           TextField(
             decoration: InputDecoration(
               hintText: 'Email Or Phone ', hintStyle: TextStyle(
               color: Colors.grey,fontSize: 25
             )
             ),
           ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password', hintStyle: TextStyle(
                color: Colors.grey , fontSize: 25
              )
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.of(context).pushNamed(Home.ROUTE_NAME);
            }, child: Text('LOG IN') ,style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey)
            ),
            ),
            Spacer(flex: 4,),
            Text('Sign Up For Facebook', style: TextStyle(
              fontSize: 15 ,fontWeight: FontWeight.bold ,color: Colors.white
            ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20,),
            Text('Forgot Password', style: TextStyle(
                fontSize: 15 ,fontWeight: FontWeight.bold ,color: Colors.white
            ),
              textAlign: TextAlign.center,
            ),
            Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}

