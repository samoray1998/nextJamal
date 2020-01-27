import 'package:flutter/material.dart';
class siginuppage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>siginup();

}
class siginup extends State<siginuppage>{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       
       height: MediaQuery.of(context).size.height,
       width: double.infinity,
       decoration: BoxDecoration(
         color: Colors.white,
         image: DecorationImage(
           colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
           image: AssetImage('assets/Cvbackground.jpg'),
           fit: BoxFit.cover,
         ),
         
       ),
       child: ListView(
         children: <Widget>[
           Container(
             padding: EdgeInsets.all(40),
             child: Center(
               child: Image.asset("assets/logo.png",width:70,height: 70 ,),
             ),
           ),
           Column(
               children: <Widget>[
                 Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "FUll NAME",
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
                            hintText: 'Full User Name',
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
                            hintText: 'Username@live.com',
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
            children: <Widget>[
              new Expanded(
                child: new Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: new Text(
                    "CONFIRM PASSWORD",
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
           new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: new FlatButton(
                  child: new Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff64b5f6),
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          Container(
             width: MediaQuery.of(context).size.width,
             margin: const EdgeInsets.only(left: 30,right: 30,top: 50),
             alignment: Alignment.center,
             child: Row(
               children: <Widget>[
                 Expanded(
                   child: FlatButton(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30)
                     ),
                     color: Color(0xff64b5f6),
                     onPressed: ()=>{},
                      child:  Container(
                         padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 20.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                            Expanded(
                              child:  Text(
                                 "SIGN UP",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              ),
                            )
                        ],
                      ),
                      ),
                   ),
                 )
               ],
             ),
          )
         ],
       ),
     ),
   );
  }

}