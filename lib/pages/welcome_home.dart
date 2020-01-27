

import 'package:flutter/material.dart';
import 'package:second_app/pages/LoginPage.dart' ;
import 'package:second_app/pages/SingUpPage.dart';
class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>new loginhome();
    // TODO: implement createState
   

}
class loginhome extends State<home>{
  bool pressed = true;
  PageController _controller=new PageController(initialPage: 1,viewportFraction: 1.0);
  Widget fLogin(){
    return Material(
      child:Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      // width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Color(0xff64b5f6),
        image: DecorationImage(
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.1), BlendMode.dstATop),
          image: AssetImage("assets/Cvbackground.jpg"),
          fit: BoxFit.cover,
        )
       ),
       child:ListView(
         children: <Widget>[
           Container(
               padding:EdgeInsets.only(top:200),
               child: Image.asset("assets/logo.png",width: 70,height: 70,),
              // child: Text("fuck all",style: TextStyle(color: Colors.black,fontSize: 11),),
           ),
           Container(
             padding: EdgeInsets.only(top: 20),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: <Widget>[
               Text("Cv",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
               Text(" App",style: TextStyle(color: Colors.white,fontSize: 20))
             ],),
           ),
           Container(
             width: MediaQuery.of(context).size.width,
             margin: const EdgeInsets.only(left: 30,right: 30,top:150.0),
             alignment: Alignment.center,
             child: Row(
               children: <Widget>[
                 Expanded(
                   child: OutlineButton(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                     color: Color(0xff64b5f6),
                     highlightColor: Colors.black12,
                     onPressed: (){
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>siginuppage()),
            );
          } ,
                     child: Container(
                       padding: const EdgeInsets.symmetric(
                         vertical: 20.0,
                         horizontal: 20.0,
                       ),
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.center,
                         children: <Widget>[
                            Expanded(
                              child: Text(
                                "SIGN UP",
                                 textAlign: TextAlign.center,
                              style:pressed ? TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold):
                                  TextStyle(
                                  color: Color(0xfff44336),
                                  fontWeight: FontWeight.bold)
                              ),

                            )
                         ],
                       ),
                     ),
                   ),
                 )
               ],
             ),
             ),
             Container(
               width: MediaQuery.of(context).size.width,
               margin: const EdgeInsets.only(left: 30.0,right: 30.0,top: 30.0),
               alignment: Alignment.center,
               child: new Row(  
                 children: <Widget>[
                   Expanded(
                     child: FlatButton(
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),color: Colors.white,
                       onPressed: (){
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>loginpage()),
            );
          } ,
                     child: Container(padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Text("LOGIN",textAlign: TextAlign.center,style:TextStyle(color: Color(0xff64b5f6),fontWeight: FontWeight.bold),),
                          )
                        ],
                      ),
                      ),
                   ))
                 ],
               ),
             )
          
           
         ],
       )
   ) ,
   );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     body: Container(
       width: double.infinity,
       height: MediaQuery.of(context).size.height,
       child: PageView(
         controller: _controller,
          physics: new AlwaysScrollableScrollPhysics(),
          children: <Widget>[ loginpage(),fLogin(), siginuppage()],
          scrollDirection: Axis.horizontal,
       ),
     ),
   );
   
   
  }

}











































// import 'package:second_app/pages/myMainHome.dart' as lkhra;
// import 'package:second_app/pages/regiter.dart';
// class home extends StatelessWidget{
//   bool _remeberme=true;
//   Widget _txtEmial(){
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
// Widget _txtPassword(){

//   return new TextFormField(
                         
//                       decoration: new InputDecoration(
//                         prefixIcon:Icon(Icons.lock,color:Colors.black38,),
//                         labelText: "Enter Password",
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
// }
// Widget _checkBoxR(){

//   return new  Container(
//                           child: new Row(
//                             children: <Widget>[
//                               Theme(data: ThemeData(unselectedWidgetColor: Colors.blue),
//                               child: Checkbox(value: _remeberme,checkColor: Colors.white,activeColor: Colors.blue,onChanged: (value){
                                
//                                   _remeberme=value;
                                
//                               },),),
//                               Text("Remember me!"),
//                             ],
//                           ),
//                         );
// }
// Widget _forgetpass(){
//   return new  Container(
//                        alignment: Alignment.centerRight,
//                      child: new Column(
//                        mainAxisAlignment: MainAxisAlignment.center,
//                        children: <Widget>[
//                          new InkWell(
//                            child: new Text("Forget Password !"),onTap: ()=>debugPrint("something happend"),
//                          )
//                        ],
//                      ),
//                      )  ;
// }
// Widget _login(BuildContext context){
//   return new  Container(
//                          padding: EdgeInsets.symmetric(vertical: 20.0),
//                          width: double.infinity,
//                          child: RaisedButton(
//                            elevation: 5.0,
//                            onPressed: ,
//                            padding: EdgeInsets.all(15.0),
//                            shape: RoundedRectangleBorder(
//                              borderRadius: BorderRadius.circular(30.0)
//                            ),
//                            color: Colors.white,
//                            child: Text("Login",style:new TextStyle(
//                              color: Colors.black,
//                              letterSpacing: 1.5,
//                              fontSize: 18.2,
//                              fontWeight: FontWeight.bold,
//                              fontFamily: "OpenSans",
//                              )),
//                          ),

//                        );
// }
// Widget _buildSocialBtn(Function onTap, AssetImage logo) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 60.0,
//         width: 60.0,
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           color: Colors.white,
//           boxShadow: [
//             BoxShadow(
//               color: Colors.black26,
//               offset: Offset(0, 2),
//               blurRadius: 6.0,
//             ),
//           ],
//           image: DecorationImage(
//             image: logo,
//           ),
//         ),
//       ),
//     );
//   }

// Widget _tlogin(){
//   return new Column(
//                         children: <Widget>[
//                           new Text("_OR_",style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontFamily: "OpenSens",
//                             fontSize: 18.0,
//                             color: Colors.orange,
//                           ),),
//                           new Padding(padding: EdgeInsets.only(top: 15.0)),
//                           new Text("Sing in With :",style:TextStyle(color: Colors.blue,))
//                         ],
//                       );
// }
// Widget _buildSignupBtn(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.push(context, MaterialPageRoute(
//           builder: (context)=>register()
//         ));
//       },
//       child: RichText(
//         text: TextSpan(
//           children: [
//             TextSpan(
//               text: 'Don\'t have an Account? ',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//             TextSpan(
//               text: 'Sign Up',
//               style: TextStyle(
//                 color: Colors.blue,
//                 fontSize: 18.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget _simpleloginform(BuildContext context){
//      Color hexToColor(String code) {
//       return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
//     }
//     return     new Container(
//       padding: const EdgeInsets.all(30.0),
//        margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
//         width: MediaQuery.of(context).size.width,
//                   child: new SingleChildScrollView(
//                     child: new Column(
//                       mainAxisSize: MainAxisSize.max,
//                      children : [
//                        new Padding(padding: EdgeInsets.only(top: 100.0)),
//                        new Text('Sing In',
//                        style: new TextStyle(color: hexToColor("#F2A03D"), fontSize: 25.0),),
//                        new Padding(padding: EdgeInsets.only(top: 20.0)),
//                        _txtEmial()
//                         ,
//                     new Padding(padding: EdgeInsets.only(top: 20.0)),
//                        _txtPassword(),
//                         new Padding(padding: EdgeInsets.only(top: 10.0)),
//                         _forgetpass()
//                      ,
//                       new Padding(padding: EdgeInsets.only(top: 15.0)),
//                        _checkBoxR(),
//                       _login(context),
//                       _tlogin(),
//                       Padding(padding: EdgeInsets.only(top: 15.0),),
//                       new Row(
                        
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: <Widget>[
//                            _buildSocialBtn(()=>print("you tap facebook"),new AssetImage('assets/Linkedin.png')
//                      ),
//                      new Padding(padding: EdgeInsets.all(10.0),)
//                      ,
//                       _buildSocialBtn(()=>print("you tap google"),new AssetImage('assets/Google.png')
//                      ),
//                      new Padding(padding: EdgeInsets.all(10.0),)
//                      ,
//                      _buildSocialBtn(()=>print("you tap google"),new AssetImage('assets/facebook.jpg')),
                     

//                         ],
//                       )
//                       ,
//                       new Padding(padding: EdgeInsets.only(top:15.0),),
//                     _buildSignupBtn(context),
                  
//                      ]
//                     )
//                  ),
// );
          
//   }


// @override

//   Widget build(BuildContext context){
//     return new Scaffold(
//         resizeToAvoidBottomPadding: false,
//         body: PageView(
//           scrollDirection: Axis.vertical,
//             children: <Widget>[
//             _simpleloginform(context),
            
//             ],
//         ),
//     );
//    }






  
//   }
  
