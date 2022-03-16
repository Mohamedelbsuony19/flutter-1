

import 'package:flutter/material.dart';

class faceLog extends StatelessWidget {
  var email=TextEditingController();
  var pass=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('FaceBook',textAlign: TextAlign.center,),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text('Log in',style: TextStyle(fontSize: 33 , fontWeight: FontWeight.bold),),
                  ),
                 SizedBox(height: 30,),
                  TextFormField(
                    controller: email,
                    onFieldSubmitted: (value){     //بتحفظ الفاليو من الزرار
                      print(value);
                    },
                    keyboardType: TextInputType.emailAddress,  //  بتخلي الكيبور تكتب ايميل او ارقام
                    decoration: InputDecoration( 
                     labelText: 'Email Adress',
                      prefixIcon: Icon(Icons.email, color: Colors.greenAccent,),
                      border: OutlineInputBorder() 
                    ),
                  )
                ,
                SizedBox(height: 30,),
                TextFormField(
                  controller: pass,
                  obscureText: true,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration( 
                     labelText: 'Password',
                     suffixIcon: Icon(Icons.remove_red_eye),
                      prefixIcon: Icon(Icons.lock, color: Colors.greenAccent,),
                      border: OutlineInputBorder() 
                    ),
                  ),
                SizedBox(height: 30,),
                Container(
                  width: double.infinity,
                  color: Colors.blue,
                  child: MaterialButton(onPressed: (){
                    print(pass.text);
                    print(email.text);
                  },
                  child:Text('Log in' ,
                   style: TextStyle(
                     color: Colors.white,
                      fontSize: 22
                      ),
                        ) ,
                  ),
                )
                ,
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Have you Acoount ?'),
                    TextButton(onPressed: (){
                      print(pass.text);
                      print(email.text);
                    }, child: 
                    Text('Create Acoount')
                    )
                    
                  ],
                )
                ],
              ),
            ),
          ),
        ),
        
        
        ),
        );
      
    
  }
}