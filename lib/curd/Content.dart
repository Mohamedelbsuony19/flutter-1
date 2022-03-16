import 'package:flutter/material.dart';
import 'package:untitled5/curd/items.dart';
class Content extends StatefulWidget {
  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  var count=0;
  TextEditingController namecont=TextEditingController();
  TextEditingController phonecont=TextEditingController();

  var itm1=item();

  var itm2=item();

  var itm3=item();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        appBar: AppBar(
          centerTitle: true,
          title: Text('Contecst Screen', textAlign: TextAlign.center, style: TextStyle(
          fontSize: 22 ,
          color: Colors.white,
          fontWeight: FontWeight.bold
          ),
          ),
        ),

        body: Container(
          color: Colors.grey,
          height: double.infinity,
          child:SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(5),

                  child:
                  TextField(
                    controller: namecont,
                    decoration: InputDecoration(
                      hintText: 'Enter Yuor Name Here',hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      ),
                      suffixIcon: Icon(Icons.drive_file_rename_outline ,
                        color: Colors.blue,
                      size: 25
                        ,)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(5),

                  child:
                  TextField(
                    controller: phonecont,
                    decoration: InputDecoration(
                        hintText: 'Enter Yuor phone Here',hintStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        ),
                        suffixIcon: Icon(Icons.call ,
                          color: Colors.blue,
                          size: 25
                          ,)
                    ),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child:
                      ElevatedButton(

                          onPressed:AddBtn,
                          child:
                          Text('ADD', style: TextStyle( fontWeight: FontWeight.bold),),
                        style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all(Colors.blue),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ))
                        ),
                      ),
                    ),
                    Expanded(
                        child:
                        ElevatedButton(onPressed: DeleteBtn,
                      child:
                      Text('Delete',style: TextStyle( fontWeight: FontWeight.bold),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                          shape: MaterialStateProperty.all(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)
                          ))
                      ),
                    ))
                  ],
                ),
                SizedBox(height: 20,),
                itm1,
                itm2,
                itm3
              ],
            ),
          ) ,
        ),
      ),
    );
  }

  void AddBtn() {
    if(count==0){
      itm1 = item(visible: true,name: namecont.text,phone: phonecont.text,);
      count++;
      setState(() {});
    }else if(count==1){
      itm2=item(visible: true,name: namecont.text,phone: phonecont.text,);
      count++;
      setState(() {});
    }else if(count==2){
      itm3 = item(visible: true,name: namecont.text,phone: phonecont.text,);
      count++;
      setState(() {});
    }
  }

  void DeleteBtn() {
    if(count==3){
      itm3 =item(visible: false,);
      count--;
      setState(() {

      });
    }else if(count==2){
      itm2=item(visible: false,);
      count--;
      setState(() {

      });
    }else if(count==1){
      itm1=item(visible: false,);
      count--;
      setState(() {

      });
    }
  }
}
