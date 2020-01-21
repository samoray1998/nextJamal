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
                padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Container(
            height: 4.0,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [const Color(0xFFB9F6CA),const Color(0xFF2962FF), ])),
                   
             )
             ),
             Container(
               padding: EdgeInsets.only(top: 20),
               margin: EdgeInsets.only(left: 20),
               child: Text("Recent Activities :",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             ),
             Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                padding: EdgeInsets.only(left: 20.0),
                height: 200.0,
               child: ListView(
                             scrollDirection: Axis.horizontal,
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            mycard("50"),
             mytemplets("templets1"),
             mytemplets("templets2"),
               mytemplets("templets3"),
              mytemplets("templets4"),
                          
                          ],
                           ),
             ),
             SizedBox(height: 10.0,)
             ,
             educationCard(),
              SizedBox(height: 10.0,),
              Container(
                  margin: EdgeInsets.only(top: 10,left: 10.0),
                  child: Card(
                    
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
      return Container(
        
        child:
         Card(
          elevation: 5.0,
          
            child:Wrap(
              children: <Widget>[
             Container(
              width: 160.0,
              height: 200.0,
              decoration: BoxDecoration(
               gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [const Color(0xFF2962FF), const Color(0xFFB9F6CA)])                

              ),
              child: Column(
              
              mainAxisSize:MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20.0,),
                Container(
                  margin: EdgeInsets.only(right: 100),
                  child:Icon(Icons.thumb_up,color: Colors.white,) ,),
                
                              
                SizedBox(height: 74.0,),
                Container(
                  margin: EdgeInsets.only(right: 100),
                  child: Text(nblike,style: TextStyle(fontSize: 24.0),) ,)
                             ,
                              SizedBox(height: 12.0,),
                              Container(
                                margin: EdgeInsets.only(right: 10),
                                child: Text("Liked Templets") ,)
           
              ],
            ),
            ),

              ],
            )
      ),);
    }
    Widget mytemplets( String namet){
      return Container(
          width: 160.0,
          height: 200,
        child:Card(
           elevation: 5.0,
         
         
          child: Wrap(
            children: <Widget>[
              Image.asset("assets/TempletsEx.jpg",width: 160.0,height: 150,),
              Center(child: 
              Text(namet),),
              

            ],
          ),
        )
        ,


      );

    }
    Widget educationCard(){
      return Container(
               
               margin: EdgeInsets.only(left: 10.0),
               height: 210,
               child: Card(
                 elevation: 5.0,
                 child: Column(
                   children: <Widget>[
                     Row(
                       children: <Widget>[
                         
                         Container(
                          margin: EdgeInsets.only(left: 10,top: 10),
                        child:Text(
                           "Education",
                           style: TextStyle(
                             fontFamily: "OpenSens"
                             ,fontSize: 16
                             ,fontWeight: FontWeight.w500
                             )
                             ), 

                         ),
                         Spacer(),
                         IconButton(
                           icon: Icon(Icons.edit),
                           onPressed: ()=>print("Edit Education"),
                         )
                         
                       ],
                     ),
                     Row(
                       children: <Widget>[

                     Container(
                         margin: EdgeInsets.only(left: 10,top: 5),
                         child: Image.asset("assets/Education.png",width: 50.0,height: 50.0,),
                     ),
                     Container(
                       padding: EdgeInsets.only(left: 5),
                       child:Column(children: <Widget>[
                         Container(
                           child: Text("Certificate Name",style:TextStyle(fontWeight: FontWeight.w500)),
                         ),
                       
             SizedBox(
  width: 200,
  child: Text(
    "hjhj jhjh hjgj nhgh klklj jkhk jgjg ghf hh ",
    style: TextStyle(
      color: Colors.black,
     
    ),
  ),
),  
            
                          
                        
                       ],)
                     )
                       ],
                     ),
                      Container(
                        margin: EdgeInsets.only(top: 40),
               child: FlatButton(
                 child: Text("See All",style: TextStyle(color: Colors.blue),),
                 onPressed: ()=>print("see all Formations"),
               ),
             ) 
                   ],
                 ),

               ),
             );
    }
}