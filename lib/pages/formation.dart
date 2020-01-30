

import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:second_app/pages/AddFormation.dart';

class formation extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myformation();
  }

}
class myformation extends State<formation>{
String _date="Fomation Start Date";
   String _date2= "Formation End Date";

  


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     appBar: AppBar(
       title: Text("Formation"),
       
       centerTitle: true,
        automaticallyImplyLeading: false,
     ), 
     body: Container(
       padding: EdgeInsets.only(top: 30),
       child:ListView(
         children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child:Slidable(
              delegate: new SlidableDrawerDelegate(),
              child: InkWell(
                onTap: (){
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>addformation()),
            );
          } ,
                child: ListTile(
                   leading: Image.asset("assets/Formation.png",width: 50,height: 50,),
                   title: Container(
                     alignment: Alignment.topLeft,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Text("- Foramtion Name",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w600),),
                         Row(
                           children: <Widget>[
                              Text("-"),
                              InkWell(
                           child: Text("www.certificatelink.com",style: TextStyle(color: Colors.blue,fontSize: 14.5,)),
                           onTap: ()=>{},
                         ),
                           ],
                         ),
                         
                        
                       ],
                     ),
                   ),
                ),
              ),
              secondaryActions: <Widget>[
    new IconSlideAction(
      caption: 'Edit',
      color: Colors.black45,
      icon: Icons.edit,
      onTap: () =>print("more"),
    ),
    new IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () =>print("Delete"),
    ),
  ],
            )
          ),
          Container(
            padding: EdgeInsets.only(bottom: 10),
            child:Slidable(
              delegate: new SlidableDrawerDelegate(),
              child: InkWell(
                onTap: (){
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>addformation()),
            );
          } ,
                child: ListTile(
                   leading: Image.asset("assets/Formation.png",width: 50,height: 50,),
                   title: Container(
                     alignment: Alignment.topLeft,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Text("- Foramtion Name",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w600),),
                         
                         Row(
                           children: <Widget>[
                              Text("-"),
                              InkWell(
                           child: Text("www.certificatelink.com",style: TextStyle(color: Colors.blue,fontSize: 14.5,)),
                           onTap: ()=>{},
                         ),
                           ],
                         ),
                         
                         
                       ],
                     ),
                   ),
                ),
              ),
              secondaryActions: <Widget>[
    new IconSlideAction(
      caption: 'Edit',
      color: Colors.black45,
      icon: Icons.edit,
      onTap:(){
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>addformation()),
            );
          } ,
    ),
    new IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () =>print("Delete"),
    ),
  ],
            )
          ),
           Container(
             padding: EdgeInsets.only(bottom: 10),
            child:Slidable(
              delegate: new SlidableDrawerDelegate(),
              child: InkWell(
                onTap: (){
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>addformation()),
            );
          } ,
                child: ListTile(
                   leading: Image.asset("assets/Formation.png",width: 50,height: 50,),
                   title: Container(
                     alignment: Alignment.topLeft,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisSize: MainAxisSize.min,
                       children: <Widget>[
                         Text("- Foramtion Name",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w600),),
                         Row(
                           children: <Widget>[
                              Text("-"),
                              InkWell(
                           child: Text("www.certificatelink.com",style: TextStyle(color: Colors.blue,fontSize: 14.5,)),
                           onTap: ()=>{},
                         ),
                         
                           ],
                         ),
                         
                         
                       ],
                     ),
                   ),
                ),
              ),
              secondaryActions: <Widget>[
    new IconSlideAction(
      caption: 'Edit',
      color: Colors.black45,
      icon: Icons.edit,
      onTap: (){
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>addformation()),
            );
          } ,
    ),
    new IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () =>print("Delete"),
    ),
  ],
            )
          ),
          
         
         ],
       ),
      //  child: Column(
      //    children: <Widget>[
      //     //  Slidable(
      //     //    delegate: new SlidableDrawerDelegate(),
      //     //    child:Container(
      //     //      color: Colors.white,
      //     //      child: ListTile(
      //     //        leading: Image.asset("assets/Formation.png",width: 50,height: 50,),
      //     //        title: Container(
      //     //          child: Column(
      //     //            children: <Widget>[
      //     //              Expanded(
      //     //                child: Text("formation name"),
      //     //              )
      //     //            ],
      //     //          ),
      //     //        ),
      //     //      ),
      //     //    )

      //     //  )
      //     Text("fuck hhh ")
      //    ],
      //  ),
       ),
    //  floatingActionButton: FloatingActionButton(
    //    child: Icon(Icons.save),
    //    onPressed:() => _onAlertWithCustomContentPressed(context) ,
    //    ),
    );






  }
}

