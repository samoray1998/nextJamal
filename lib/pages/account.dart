import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
class accountpage extends StatefulWidget with NavigationStates {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new myAccount (
    
        );
      }
    
    }
    
    class myAccount  extends State<accountpage> {
      // Future<String> _data= awiat getData();

  @override
  Widget build(BuildContext context) {
    var futureBuilder=new FutureBuilder(
      future: _getData(),
      builder: (BuildContext context, AsyncSnapshot snapshot){
            switch (snapshot.connectionState) {
              case ConnectionState.none: return new Text("press button to start");
                break;
                 case ConnectionState.waiting: return new Text("Awiating the result");
                break;
                
              default:
              if (snapshot.hasError) {
                return new Text("Error :${snapshot.error}");
              } else {
                return new Text("${snapshot.data}");
              }
            }
      },
    );
    // TODO: implement build
    return Center(
      child: ListView(
        children: <Widget>[
             SizedBox(height: 32.0,),
             Padding(
               padding: EdgeInsets.all(32),
               child: Column(children: <Widget>[
                 
                Container(
                   margin: const EdgeInsets.only( left: 280.0),
                  child:
                   IconButton(
                   onPressed: ()=>print("you pressed me"),
                   icon: Icon(
                     
                     Icons.settings,
                   size: 25.0,color: Color(0xFFa572c0),),
                 )
                   
                ),
                 SizedBox(
                height: 8.0,
              ),
              CircleAvatar(
                
                backgroundColor: Colors.blueAccent,
                child: Icon(Icons.person),
                radius:35.0,
              ),
              Text(
                'User Name',
                style: TextStyle(
                  fontSize: 24.0,
                ),
              ),
              SizedBox(height: 4.0,),
              Text(
                'Boi',
                style: TextStyle(color: Colors.grey),
              )
               ],
               ),
             ),
             Padding(
                padding: const EdgeInsets.only(left: 30.0,right: 30.0),
          child: Container(
            height: 4.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [const Color(0xFFa572c0), const Color(0xFF6559d4)])),
                   
             )
             ),
             Container(
                child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: <Widget>[
                           Padding(padding: const EdgeInsets.only(left: 18.0,right: 32.0),
                          
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                        
                           mycard("50"),
                             Column(children: <Widget>[
                              
                              Text(" Templet1",style: TextStyle(color: Colors.grey)),

                            ],),
                             Column(children: <Widget>[
                             
                              Text("Templet2",style: TextStyle(color: Colors.grey)),

                            ],)
                          ],
                           ),
                           )
                                
                      ],
                      ),
                    ),
             )
             

      ],)
    );
  }
    Future <List> _getData() async{
      String path="http://jsonplaceholder.typicode.com/posts";
      var response=await http.get(path);
      var something= json.decode(response.body);
      return something;
    }
    Widget mycard( String nblike){
      return Center(
        
        child:
         Card(
          elevation: 8.0,
          
            child:Column(
              children: <Widget>[
             Container(
              width: 120.0,
              height: 80.0,
              decoration: BoxDecoration(
               gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [const Color(0xFF2962FF), const Color(0xFFB9F6CA)])                

              ),
              child: Column(
              
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SizedBox(height: 8.0,),
                Text(nblike,style: TextStyle(fontSize: 24.0),),
                              Icon(Icons.thumb_up,color: Colors.white,),
                              
                              SizedBox(height: 8.0,),
              ],
            ),
            ),
            Text("Liked Templets")

              ],
            )
      ),);
    }
}