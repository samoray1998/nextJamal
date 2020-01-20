import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class homepage extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new myHome(
    
        );
      }
    
    }
    
    class myHome  extends State<homepage>{
      Material myitems(IconData icon,String heading,int color){
        return new Material(
          color: Colors.white,
          elevation: 14.0,
          shadowColor: Color(0X802196F3),
          borderRadius: BorderRadius.circular(24.0),
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
            )
           
        );
      }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return new Container(

padding: EdgeInsets.only(top:120.0),




 child:StaggeredGridView.count(
  crossAxisCount: 2,
  crossAxisSpacing: 12.0,
  mainAxisSpacing: 12.0,
  padding:EdgeInsets.symmetric(horizontal: 16.0,vertical: 8),
  children: <Widget>[

    // Padding(
    //   padding: EdgeInsets.only(top: 120.0),
      
    // ),
    //  Text("Cv Generator app",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0,fontFamily: "OpenSens"),),
    myitems(Icons.assignment_ind,"Personal Info",0xffed622b),
     myitems(Icons.show_chart,"Skills",0xff26cb3c),
      myitems(Icons.next_week,"Competences",0xff3399fe),
       myitems(Icons.school,"Formation",0xff622f74),
        myitems(Icons.assignment,"Experince",0xfffffa00),
        myitems(Icons.widgets,"CV Templets",0xfff4511e),

  ],
  staggeredTiles: [
    StaggeredTile.extent(2, 150),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(2, 130),

    
  ],
));







    // return new ListView(
      
    //   children: <Widget>[
    //     Padding(padding:EdgeInsets.only(top: 40.0),),
    //     Container(
    //       alignment: Alignment.center,
    //       child:Text("Cv Generator app",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0,fontFamily: "OpenSens"),) ,
          
    //     ),
    //     // Text("l9lawi",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30.0,fontFamily: "OpenSens")),
    //    Center(
         
    //     // :GridView.count(
    //     //   crossAxisCount: 2,
    //     //   children: <Widget>[
    //     //     Card(
    //     //       color: Colors.red,
    //     //       child: InkWell(
    //     //         onTap: (){},
              
    //     //         child: Center(
    //     //           child:Column(child
    //     //             children: <Widget>[
    //     //               Image.asset("assets/personInfo.png",width: 70.0,height: 70.0,),
    //     //               Text("Add more Info",style: TextStyle(color: Colors.black,),),
    //     //             ],
    //     //           )
    //     //         ),
    //     //       ),
    //     //     )
    //     //   ],
    //     // )
    //    )
       
      
    //   ],
    // );
  }
}