import 'package:flutter/material.dart';
import 'package:untitled5/Containar/buttun.dart';

class conte extends StatefulWidget {
  @override
  State<conte> createState() => _conteState();
}

class _conteState extends State<conte> {
  String resulte='';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title: Center(
            child: 
            Text('calcualator', style: TextStyle(
              fontSize: 22
            ),
            )
                       ),
        ),
        body: Column(
          children: [
             Expanded
             (child: 
                  Row(
                    children:[ Text('$resulte',style: 
                    TextStyle(fontSize: 28
                    ),
                    ),]
                  )
             ),
             Expanded(
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                            buttun('7',onbutton),
                            buttun('8',onbutton),
                            buttun('9',onbutton),
                            buttun('*',onPprertor)
                 ],
               ),
             ),
                          Expanded(
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                            buttun('4',onbutton),
                            buttun('5',onbutton),
                            buttun('6',onbutton),
                            buttun('-',onPprertor)
                 ],
               ),
             ),
                          Expanded(
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                            buttun('1',onbutton),
                            buttun('2',onbutton),
                            buttun('3',onbutton),
                            buttun('+',onPprertor)
                 ],
               ),
             ),
                          Expanded(
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.stretch,
                 children: [
                            buttun('0',onbutton),
                            buttun('.',onbutton),
                            buttun('=',oneqal),
                            buttun('/',onPprertor)
                 ],
               ),
             )



        ],
                    ),
         ),
    );
  }

  String Lhs='';
  String opretor='';
  void onbutton(digit){
  resulte+=digit;
  setState(() {

  });
  }
  void onPprertor(Oprclick){
    if(Lhs.isEmpty){
      Lhs=resulte;
      opretor=Oprclick;
      resulte='';
      setState(() {

      });
    }else{
      String rhs=resulte;
     Lhs= cal(Lhs,opretor,rhs).toString();
     resulte='';
     opretor=Oprclick;
    }
    setState(() {

    });
  }

  double ?cal(String lhs, String opretor, String rhs) {
    double Left=double.parse(lhs);
    double Rhigte=double.parse(rhs);
    if(opretor=='+'){
      return Left + Rhigte;
    }else if( opretor=='-'){
      return Left-Rhigte;
    }else if( opretor=='*'){
      return Left*Rhigte;
    }else if( opretor=='/'){
      return Left/Rhigte;
    }
  }
  void oneqal(){
  if(Lhs.isEmpty || resulte.isEmpty|| opretor.isEmpty )return;
  resulte=cal(Lhs,opretor,resulte).toString();
  Lhs="";
  setState(() {

  });
  }
}