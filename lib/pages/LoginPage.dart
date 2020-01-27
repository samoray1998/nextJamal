import 'package:flutter/material.dart';
import 'package:second_app/pages/homepage.dart';
import 'package:second_app/pages/myMainHome.dart';
class loginpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>login();

}
class login extends State<loginpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
         color: Colors.white,
         image: DecorationImage(
            colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.05), BlendMode.dstATop),
          image: AssetImage('assets/Cvbackground.jpg'),
          fit: BoxFit.cover,
        ),
         ),
         child: ListView(
           children: <Widget>[
             Container(
               padding: EdgeInsets.all(90.0),
               child: Center(
                 child: Image.asset("assets/logo.png",width: 70,height: 70,),
                // child: Text("fuck that shit"),
                 
               ),
              
             ),
             Column(
               children: <Widget>[
                 Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "EMAIL",
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
                          child: TextField(
                            obscureText: true,
                            textAlign:  TextAlign.left,
                            decoration: InputDecoration(border: InputBorder.none,
                            hintText: 'uesername@live.com',
                            hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                     ],
                   ),
                 )
               ],
             ),
             Divider(
            height: 24.0,
          ),
          Row(
            children: <Widget>[
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: new Text(
                    "PASSWORD",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff64b5f6),
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 2.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Color(0xff64b5f6),
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Expanded(
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '*********',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: 24.0,
          ),
          Row(
            mainAxisAlignment:MainAxisAlignment.end,
              children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: new FlatButton(
                      onPressed: ()=>{},
                      child: new Text(
                        "Forgot Password ?",textAlign: TextAlign.end,style: TextStyle(color: Color(0xff64b5f6),fontWeight: FontWeight.bold,fontSize: 15.0),
                      ),
                    ),
                  )
              ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0),
                    ),
                    color: Color(0xff64b5f6),
                    onPressed: (){
            Navigator.push(
             context,
              MaterialPageRoute(builder: (context) =>page1()),
            );
          } ,
                    child: new Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Expanded(
                            child: Text(
                              "LOGIN",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
                Text(
                  "OR CONNECT WITH",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(border: Border.all(width: 0.25)),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.only(right: 8.0),
                    alignment: Alignment.center,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new FlatButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            color: Color(0Xff3B5998),
                            onPressed: () => {},
                            child: new Container(
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Expanded(
                                    child: new FlatButton(
                                      onPressed: ()=>{},
                                      padding: EdgeInsets.only(
                                        top: 20.0,
                                        bottom: 20.0,
                                      ),
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          Image.asset("assets/fblogin.png",width: 20,height: 20,),
                                          // Icon(
                                          //   const IconData(0xea90,
                                          //       fontFamily: 'icomoon'),
                                          //   color: Colors.white,
                                          //   size: 15.0,
                                          // ),
                                          Text(
                                            "FACEBOOK",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                new Expanded(
                  child: new Container(
                    margin: EdgeInsets.only(left: 8.0),
                    alignment: Alignment.center,
                    child: new Row(
                      children: <Widget>[
                        new Expanded(
                          child: new FlatButton(
                            shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(30.0),
                            ),
                            color: Color(0Xffdb3236),
                            onPressed: () => {},
                            child: new Container(
                              child: new Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Expanded(
                                    child: new FlatButton(
                                      onPressed: ()=>{},
                                      padding: EdgeInsets.only(
                                        top: 20.0,
                                        bottom: 20.0,
                                      ),
                                      child: new Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: <Widget>[
                                          // Image.asset("assets/GGLogin.png",width: 20,height: 20,),
                                          // Icon(
                                          //   const IconData(0xea88, 
                                          //       fontFamily: 'icomoon'),
                                          //   color: Colors.white,
                                          //   size: 15.0,
                                          // ),
                                          Container(
                                              child: Text("G",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                                          ),

                                          Text(
                                            "GOOGLE",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
           ],
         ),
        ),
     
    );
  }

}