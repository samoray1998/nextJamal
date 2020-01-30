import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
class AddlangaugePage extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() =>AddLangauge();
  
  }
  
  class AddLangauge extends State<AddlangaugePage>{
     double rating=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text("Add A Langauge"),
       centerTitle: true,
       automaticallyImplyLeading: false,
       actions: <Widget>[
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
     body: Container(
       child: ListView(children: <Widget>[
         Padding(
           padding: EdgeInsets.only(top: 30),
           child: Container(
             child: Column(
               children: <Widget>[
                
                 Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "Langauge",
                       style: TextStyle(
                          fontWeight: FontWeight.bold,
                      color: Color(0xff64b5f6),
                      fontSize: 15.0,
                       ),
                     ),
                   ),
                 ),
                 Container(
                   width: MediaQuery.of(context).size.width,
                   margin: const EdgeInsets.only(left: 40.0,right: 40.0,top:2.0),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     border: Border(
                       bottom: BorderSide(
                         color: Color(0xff64b5f6),
                         width: 0.5,
                         style: BorderStyle.solid
                       )
                     )
                   ),
                   padding: EdgeInsets.only(left: 0.0,right: 10.0),
                   child: new Row(
                     crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                     children: <Widget>[
                        Expanded(
                          child: TextFormField(
                           
                            textAlign:  TextAlign.left,
                            
                            decoration: InputDecoration(border: InputBorder.none,
                            hintText: 'English...',
                            prefixIcon: Icon(Icons.language),
                            hoverColor: Color(0xff64b5f6),
                            hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                     ],
                   ),
                 )
               ],
             ),
           ),
         ),
         SizedBox(
           height: 30,
         ),
          Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "Select Your level",
                       style: TextStyle(
                          fontWeight: FontWeight.bold,
                      color: Color(0xff64b5f6),
                      fontSize: 15.0,
                       ),
                     ),
                   ),
                 ),
          Container(
     alignment: Alignment.center,
     padding: EdgeInsets.only(top: 20),
     child:SmoothStarRating(
          allowHalfRating: false,
          onRatingChanged: (v) {
            rating = v;
            setState(() {});
          },
          starCount: 5,
          rating: rating,
          size: 35.0,
          filledIconData: Icons.star,
          halfFilledIconData: Icons.star_border,
          color: Colors.blue,
          borderColor: Colors.blue,
          spacing:4.0
        ) ,
   ) 
       ],),
     ),
     floatingActionButton: FloatingActionButton.extended(
       icon: Icon(Icons.add),
       label: Text("Add Langauge"),
       onPressed: ()=>{},
     ),
   );
  }
}
class mypopupitem{
 final String titel;
 final Icon icon;

 const mypopupitem(this.titel, this.icon);
 
  
}
const String c="Langauge";
const String c2="Logout";
const List<mypopupitem> mypopupitems=[
 const mypopupitem(c,const Icon(Icons.translate)),
   mypopupitem(c2,const Icon(Icons.exit_to_app))
 ];