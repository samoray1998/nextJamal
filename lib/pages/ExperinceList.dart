import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
class ExpirinceListPage extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState()=>ExperinceList();
  
  }
  
  class ExperinceList extends State<ExpirinceListPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
appBar: AppBar(
  title: Text("Your Experinces"),
  centerTitle: true,
  automaticallyImplyLeading: false,
),
body: Container(
  
  child: ListView(children: <Widget>[
    Padding(
      padding: EdgeInsets.only(top: 30),
    ),
    Card(
      margin: EdgeInsets.only(left: 12,right: 12),
      child: Container(
        
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                children: <Widget>[
                  Text("Full Stack Developer",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600
                    )
                    ,),
                    Spacer(),
                   PopupMenuButton(
        icon: Icon(Icons.more_vert),
        itemBuilder: (BuildContext context){
          return  mypopupitems.map((mypopupitem mpp){
                return new PopupMenuItem(child: ListTile(
                  title:new Text(mpp.titel),
                  leading: mpp.icon,
                ),

                );
          }).toList(); 
        },

      )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Company Name :",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                    )),
                    Text("Microsoft",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300
                    ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
             Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Company Adress :",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                    )),
                    Text("Morocco,Laayoune ....",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300
                    ))
                ],
              ),
            ),
             SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Date Of Start :",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                    )),
                    Text("2017/02/3",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300
                    ))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
             Container(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Date Of End :",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400
                    )),
                    Text("2018/10/3",style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300
                    ))
                ],
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    )
  ],)
),

    );
  }
}
class mypopupitem{
 final String titel;
 final Icon icon;

 const mypopupitem(this.titel, this.icon);
 
  
}
const String c="Edit";
const String c2="Delete";
const List<mypopupitem> mypopupitems=[
 const mypopupitem(c,const Icon(Icons.edit)),
   mypopupitem(c2,const Icon(Icons.delete,color: Colors.red,))
 ];