import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart'; 
import 'package:rflutter_alert/rflutter_alert.dart';
class skill extends StatefulWidget with NavigationStates {






  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return addSkills();
  }

}
class addSkills extends State<skill>{
_onAlertWithCustomContentPressed(context) {
  double rating=0;
    Alert(
        context: context,
        title: "Add A Skill",
        content: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
                  child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Skill Name',
                          prefixIcon: Icon(Icons.assignment)
                        ),
                      ),
              ),
            SizedBox(height: 20,),
             Text("Select Your Skill Level :",style: TextStyle(fontSize: 11,fontFamily: "Open Sens",),) ,
             SizedBox(height: 20,),

            SmoothStarRating(
          allowHalfRating: true,
          onRatingChanged: (v) {
            rating = v;
            setState(() {});
          },
          starCount: 5,
          rating: rating,
          size: 25.0,
          filledIconData: Icons.star,
          halfFilledIconData: Icons.star_border,
          color: Colors.blueAccent,
          borderColor: Colors.blueAccent,
          spacing:0.0
        )   
                 



          ],
        ),
        buttons: [
          DialogButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              "Save",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }


 
  Widget mySkills(double rating,String sName){
    return  Card(
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

               
                
                
                 Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                  Image.asset("assets/skills.png",width: 50,height: 50,),
                  Container(
                    child: Column(
                      children: <Widget>[
                        Text(sName,style:TextStyle(fontFamily: "Open Sens",fontWeight: FontWeight.w500)),
                        Row(
                          
                          children: <Widget>[
                            Text("Level :"),
                            SmoothStarRating(
          allowHalfRating: false,
          onRatingChanged: (v) {
            rating = v;
            // setState(() {});
          },
          starCount: 5,
          rating: rating,
          size: 25.0,
          filledIconData: Icons.star,
          halfFilledIconData: Icons.star_border,
          color: Colors.blueAccent,
          borderColor: Colors.blueAccent,
          spacing:0.0
        )
                          ],
                        )
                      ],
                    ),
                  )
          
                ],),

Row(
 
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    Container(
       width: 40,
      child: IconButton(
      icon: Icon(Icons.edit,color: Colors.grey,),
      iconSize: 20,
      onPressed: ()=>print("edit that shit"),
    ),
    ),
    Container(
      width: 40,
      child:IconButton(
      icon: Icon(Icons.delete,color: Colors.red,),
      iconSize: 20,
      onPressed: ()=>print("edit that shit"),
    ) ,
    )
     
  ],
)
                 ],)
              );

  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Skills"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: new Container(
        child: Container(
          margin: EdgeInsets.only(left: 12.0,right: 12.0),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 35,
              ),
             
            mySkills(4,"C#"),
            mySkills(5,"Photoshop"),


            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
      onPressed:() => _onAlertWithCustomContentPressed(context)  
        ,
      icon: Icon(Icons.add),
      label: Text("Add"),
      ),
      
    );
  }

}