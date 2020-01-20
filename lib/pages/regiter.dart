import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new myHome2();
      }
    
    }
    
    class myHome2 extends State<register> {
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
    return Scaffold(
      appBar: AppBar(
          title: Text("Cv generator app"),
          centerTitle: true,
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
              onPressed: ()=>print('you press setting button'),
              icon: Icon(Icons.settings,color: Colors.black,),
            )
          ],
      ),
      
  bottomNavigationBar: CurvedNavigationBar(
    backgroundColor: Colors.blueAccent,
    items: <Widget>[
      Icon(Icons.person, size: 30,color: Colors.blueAccent,),
      Icon(Icons.home, size: 30,color: Colors.blueAccent),
      Icon(Icons.save, size: 30,color: Colors.blueAccent),
    ],
    onTap: (index) {
      print("you pressed the button $index");
    },
  ),
  body: Container(color: Colors.blueAccent,
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
    StaggeredTile.extent(2, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(1, 130),
    StaggeredTile.extent(2, 130),

    
  ],
))
  

    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:second_app/pages/welcome_home.dart';
// class register extends StatelessWidget  {
//   Widget _fuck(){
//     return new Container(
//                       width: 165.0,
//                                           child: Container(
//                                             child: TextField(
                                              
//                       decoration: new InputDecoration(
//                         prefixIcon:Icon(Icons.face ,color:Colors.black38,),
//                         labelText: "last Name",
//                         fillColor: Colors.white,
                        
                        
//                         border: new OutlineInputBorder(
//                           borderRadius: new BorderRadius.circular(25.0),
                          
//                           borderSide: new BorderSide(
                          

//                           ),
//                         ),
//                         //fillColor: Colors.green
//                       ),
                     
                      
//                       keyboardType: TextInputType.emailAddress,
//                       style: new TextStyle(
//                         fontFamily: "Poppins",
//                       ),
//                                             ),
//                                           )
//     );
//   }
//   Widget _fuck2(){
//     return new Container(
//         width: 165.0,
//                                           child: Container(
//                                             child: TextField(
                                              
//                       decoration: new InputDecoration(
//                         prefixIcon:Icon(Icons.face,color:Colors.black38,),
//                         labelText: "First Name",
//                         fillColor: Colors.white,
                        
                        
//                         border: new OutlineInputBorder(
//                           borderRadius: new BorderRadius.circular(25.0),
                          
//                           borderSide: new BorderSide(
                          

//                           ),
//                         ),
//                         //fillColor: Colors.green
//                       ),
                     
                      
//                       keyboardType: TextInputType.emailAddress,
//                       style: new TextStyle(
//                         fontFamily: "Poppins",
//                       ),
//                                             ),
//                                           )
//     );
//   }
//   Widget _txtEmialR(){
//     return new TextFormField(
     
//                       decoration: new InputDecoration(
//                         prefixIcon:Icon(Icons.email,color:Colors.black38,),
//                         labelText: "Enter Email",
//                         fillColor: Colors.white,
                        
                        
//                         border: new OutlineInputBorder(
//                           borderRadius: new BorderRadius.circular(25.0),
                          
//                           borderSide: new BorderSide(
                          

//                           ),
//                         ),
//                         //fillColor: Colors.green
//                       ),
//                       validator: (val) {
//                         if(val.length==0) {
                          
//                           return "Email cannot be empty";
//                         }else{
//                           return null;
//                         }
//                       },
                      
//                       keyboardType: TextInputType.emailAddress,
//                       style: new TextStyle(
//                         fontFamily: "Poppins",
//                       ),
//                     );
//   }
//   Widget _newpassword(String hints){
//    return new TextFormField(
     
//                       decoration: new InputDecoration(
//                         prefixIcon:Icon(Icons.lock,color:Colors.black38,),
//                         labelText: hints,
//                         fillColor: Colors.white,
                        
                        
//                         border: new OutlineInputBorder(
//                           borderRadius: new BorderRadius.circular(25.0),
                          
//                           borderSide: new BorderSide(
                          

//                           ),
//                         ),
//                         //fillColor: Colors.green
//                       ),
//                       validator: (val) {
//                         if(val.length==0) {
                          
//                           return "Email cannot be empty";
//                         }else{
//                           return null;
//                         }
//                       },
                      
//                       keyboardType: TextInputType.emailAddress,
//                       obscureText: true,
//                       style: new TextStyle(
//                         fontFamily: "Poppins",
//                       ),
//                     );
//   }

//   List<DropdownMenuItem<int>> ListDrop=[];
//   LoadData  (){
//     ListDrop.add(new DropdownMenuItem(child: new Text("jamal"),value: 1,));
//         ListDrop.add(new DropdownMenuItem(child: new Text("said"),value: 2,));
//             ListDrop.add(new DropdownMenuItem(child: new Text("saad"),value: 3,));

//     ListDrop.add(new DropdownMenuItem(child: new Text("hasan"),value: 4,));



//   }
//   String selected=null;
//   Widget _comboboxCountry(){
//     LoadData();
//     return new Container(
    
// child: new DropdownButton(
  
//   value: selected,
//   items: ListDrop,hint: new Text("Select your country")
// ,onChanged: (value){
//   selected=value;
 
// },),
//     );
//   }
 

// Widget _sampleForm( BuildContext context){
  
//     return Container(
       
//      padding: const EdgeInsets.all(15.0),
//         margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
//         width: MediaQuery.of(context).size.width,
//         child: SingleChildScrollView(
//             child: Column(
//                 children: <Widget>[
//                     Form(
//                         child: Column(
//                           // mainAxisSize: MainAxisSize.max,
//                             children: <Widget>[
//                                new Container(
                              
//                                  child: Column(
//                                    mainAxisAlignment: MainAxisAlignment.center,
//                                    mainAxisSize: MainAxisSize.max,
//                                    children: <Widget>[
//                                      new Padding(padding:EdgeInsets.only(top: 100.0,),),
//                                      new Text("Sign Up",style: TextStyle(
//                                        color: Colors.orange,fontSize: 25.0,
//                                      ),),
//                                      Padding(padding: EdgeInsets.only(top: 20.0),),
//                                      //first and last name
//                                      new Row(
//                                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                                       children: <Widget>[ 
//                                         _fuck2(),
//                                        _fuck()     ],
//                                      ),
//                                      Padding(padding: EdgeInsets.only(top: 20.0),),
//                                     _txtEmialR(),
                                   
//                                     Padding(padding:EdgeInsets.only(top: 20.0),),
//                                     _comboboxCountry(),
//                                     Padding(padding:EdgeInsets.only(top: 20.0),)
//                                     ,
//                                     _newpassword("Enter Password"),
//                                     Padding(padding:EdgeInsets.only(top: 20.0),),
//                                     _newpassword("Conform Password"),
//                                    Padding(padding:EdgeInsets.only(top: 20.0),),
//                                    _regesterBtn(context),
                                   
                                    

//                                    ],
//                                  ),
//                                ),
                                
//                             ],
//                         ),
//                     ),
//                 ],
//             ),  
//         ),
//     );
// }
// Widget _regesterBtn(BuildContext context){
//   return new  Container(
//                          padding: EdgeInsets.symmetric(vertical: 20.0),
//                          width: double.infinity,
//                          child: RaisedButton(
//                            elevation: 5.0,
//                            onPressed: () {
//             Navigator.push(
//              context,
//               MaterialPageRoute(builder: (context) =>home()),
//             );
//           },
//                            padding: EdgeInsets.all(15.0),
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(30.0)
//                            ),
//                            color: Colors.white,
//                            child: Text("Submit",style:new TextStyle(
//                              color: Colors.black,
//                              letterSpacing: 1.5,
//                              fontSize: 18.2,
//                              fontWeight: FontWeight.bold,
//                              fontFamily: "OpenSans",
//                              )),
//                          ),

//                        );
// }
//   @override
 
// Widget build(BuildContext context) {
//     return new Scaffold(
//         resizeToAvoidBottomPadding: false,
//         body: PageView(
//           scrollDirection: Axis.vertical,
//             children: <Widget>[
//             _sampleForm(context),
            
//             ],
//         ),
//     );
// }
  
//   }

