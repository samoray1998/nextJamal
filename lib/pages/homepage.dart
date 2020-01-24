// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:second_app/pages/personnalInfo.dart';
// import 'package:nextMain/screens/pages/menus/cv_browser.dart';
// import 'package:nextMain/services/auth.dart';
// import 'package:nextMain/services/database.dart';
class homepage extends StatefulWidget with NavigationStates{
  // AuthService _auth;
  // homepage(this._auth);


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new myHome(

     );
    }
  }

    class myHome  extends State<homepage>{
      Material myitems(IconData icon,String heading,int color, Function onTap){

        return new Material(
          color: Colors.white,
          elevation: 5.0,
          shadowColor: Color(0X802196F3),
          borderRadius: BorderRadius.circular(24.0),
          child: InkWell(
            onTap: onTap,
            child: Center(
              child:Padding(
                padding: const EdgeInsets.all(8.0),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(heading,style:TextStyle(color:new Color(color),fontSize: 17.0)),

                      ),
                      Material(
                        color: new Color(color),
                        borderRadius: BorderRadius.circular(24.0),
                        child: Padding(
                           padding: const EdgeInsets.all(16.0),
                           child: Icon(
                             icon,
                             color:Colors.white,
                             size:30.0,
                           ),
                        ),
                      )
                    ],
                  )
              ],
            ),),
              ),
          )

        );
      }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return new Container(
decoration: BoxDecoration(

),
padding: EdgeInsets.only(top:120.0),




 child:StaggeredGridView.count(
  crossAxisCount: 2,
  crossAxisSpacing: 12.0,
  mainAxisSpacing: 12.0,
  padding:EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
  children: <Widget>[
    FlatButton.icon(
      icon: Icon(Icons.assignment_turned_in),
      label: Text('Generate'),
      onPressed: () => {

      },
    ),
    InkWell( 
      onTap: (){print('HI');},
      child: myitems(Icons.assignment_ind,"Personal Info",0xffed622b,()=>{}),
    ),
     myitems(Icons.show_chart,"Skills",0xff26cb3c,()=>{Navigator.push(context, MaterialPageRoute(builder: (context) => PersonalInfos()))}),
      myitems(Icons.next_week,"Competences",0xff3399fe,null),
       myitems(Icons.school,"Formation",0xff622f74,null),
        myitems(Icons.assignment,"Experince",0xfffffa00,null),
        myitems(Icons.widgets,"CV Templets",0xfff4511e,() => {
          //  Navigator.push(context, MaterialPageRoute(builder: (context) => CvBrowser(widget._auth.user))),
        }),

  ],
  staggeredTiles: [
    StaggeredTile.extent(2, 80),
    StaggeredTile.extent(2, 150),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(2, 130),


  ],
));





  }
}