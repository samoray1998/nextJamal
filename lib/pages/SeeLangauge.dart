import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
class SeeLanguagePage extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() =>SeeLangauge ();
  
  }
  
  class SeeLangauge extends State<SeeLanguagePage> {
    double rating=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Langauges"),
        centerTitle: true,
        automaticallyImplyLeading: false,

      ),
      body:Container(
         child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              Card(
                child: Container(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 20),
                      child:Row(children: <Widget>[
                        Text(
                        "English :",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 13.0,
                        ),
                      ),
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
                      ],) 
                      
                    ),
                   
                    
                    Row(
                      children: <Widget>[
                          Container(
                      alignment: Alignment.bottomLeft,
                      padding: EdgeInsets.only(left: 30),
                      child: Text("Level :"),
                    ),
                   
                    Container(
     alignment: Alignment.centerLeft,
     padding: EdgeInsets.only(top: 10,bottom: 10,left: 10),
     child:SmoothStarRating(
          allowHalfRating: false,
          onRatingChanged: (v) {
            rating = v;
            setState(() {});
          },
          starCount: 5,
          rating: rating,
          size: 20.0,
          filledIconData: Icons.star,
          halfFilledIconData: Icons.star_border,
          color: Colors.blue,
          borderColor: Colors.blue,
          spacing:4.0
        ) ,
   ) 
                      ],
                    ),
                  ],
                ),
              ),
              )
            ],
          ),
      ) ,
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