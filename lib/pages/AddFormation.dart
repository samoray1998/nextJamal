



import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:async';
import 'dart:io';

class addformation extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ajouterFormation();
  }

}
class ajouterFormation extends State<addformation>{
   String _date="Set Data";
   String _date2= "Set Date";
 File _image;
  Future getImageFromCamera()async{
    var image=await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image=image as File;
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Formation"),
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
        child:Form(
        child: Container(
          margin: EdgeInsets.fromLTRB(12, 0, 12, 0),
          
          child: ListView(
            children: <Widget>[
                Column(
               children: <Widget>[
                 Padding(
                   padding: EdgeInsets.only(top:70),
                 ),
                 Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "Formation Name",
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
                            hintText: 'Formation Name',
                            prefixIcon: Icon(Icons.school),
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
             SizedBox(
               height: 30,
             ),
             Column(
               children: <Widget>[
                 Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "Department Name",
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
                            hintText: 'Name...',
                            prefixIcon: Icon(Icons.account_balance),
                            hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                     ],
                   ),
                 )
               ],
             ),
             SizedBox(
               height: 30,
             ),
            Column(
              children: <Widget>[
                Container(
                     alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "Formation Start Date",
                       style: TextStyle(
                          fontWeight: FontWeight.bold,
                      color: Color(0xff64b5f6),
                      fontSize: 15.0,
                       ),
                     ),
                   ),
                ),
                Container(
                   margin: const EdgeInsets.only(left: 40.0,right: 40.0,top:2.0),
                   alignment: Alignment.center,
                   width: MediaQuery.of(context).size.width,
                   
                  child:  RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 0.2,
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(1900, 1, 1),
                      maxTime: DateTime(2150, 12, 31), onConfirm: (date1) {
                    print('confirm $date1');
                    _date = '${date1.year} - ${date1.month} - ${date1.day}';
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.en);
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.date_range,
                                
                                  color: Colors.grey,
                                ),
                                Text(
                                  "  $_date",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "  ",
                        style: TextStyle(
                            color: Colors.grey,fontSize: 12,
                            
                            ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              )
                 )
              ],
            )
                 ,
                 SizedBox(
                   height: 30,
                 ),
                 Column(children: <Widget>[
                   Container(
                      alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "Formation End Date",
                       style: TextStyle(
                          fontWeight: FontWeight.bold,
                      color: Color(0xff64b5f6),
                      fontSize: 15.0,
                       ),
                     ),
                   ),
                   ),
                   Container(
                   margin: const EdgeInsets.only(left: 40.0,right: 40.0,top:2.0),
                   alignment: Alignment.center,
                   width: MediaQuery.of(context).size.width,
                   
                  child:  RaisedButton(
                    color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 0.2,
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(1900, 1, 1),
                      maxTime: DateTime(2150, 12, 31), onConfirm: (date1) {
                    print('confirm $date1');
                    _date2 = '${date1.year} - ${date1.month} - ${date1.day}';
                    setState(() {});
                  }, currentTime: DateTime.now(), locale: LocaleType.fr);
                },
                child: Container(
                  color: Colors.white,
                  alignment: Alignment.center,
                  height: 50.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.date_range,
                                
                                  color: Colors.grey,
                                ),
                                Text(
                                  "  $_date2",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "  ",
                        style: TextStyle(
                            color: Colors.grey,fontSize: 12,
                            
                            ),
                      ),
                    ],
                  ),
                )))
                 ],),
                 SizedBox(
                   height: 30,
                 ),
                 Container(alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 40),
                  child:  Text(
                       "Department Logo",
                       style: TextStyle(
                          fontWeight: FontWeight.bold,
                      color: Color(0xff64b5f6),
                      fontSize: 15.0,
                       ),
                     ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 40),
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        IconButton(
                          onPressed: getImageFromCamera,
                          tooltip: 'Pick a Photo',
                          icon: Icon(Icons.image,color: Colors.grey,),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height:200,
                          color: Colors.white,
                          child: _image==null?Center(
                            child: Text("Select an image"),
                          ):Image.file(_image),
                        )
                      ],
                    ) ,
                  ),
                  Padding(
                   padding: EdgeInsets.only(top:30),
                 ),
               
                Container(alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 40),
                  child:  Text(
                       "Or :",
                       style: TextStyle(
                          fontWeight: FontWeight.bold,
                      color: Color(0xff64b5f6),
                      fontSize: 15.0,
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
                            hintText: 'Department Link',
                            prefixIcon: Icon(Icons.public),
                            hintStyle: TextStyle(color: Colors.grey),
                            ),
                          ),
                        )
                     ],
                   ),
                 ),
                 SizedBox(
                   height: 70,
                 )
                 

          ],),
        ),
      )
      ),






//       body: new Container(
       
//         child: Form(
//           child: ListView(
//             children: <Widget>[
//               SizedBox(
//                 height: 40.0,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 12.0,right: 12.0),
//                   child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Formation Name',
//                           prefixIcon: Icon(Icons.school)
//                         ),
//                       ),
//               ),
//                SizedBox(
//                 height: 20.0,
//               ),
//               Container(
//                 margin: EdgeInsets.only(left: 12.0,right: 12.0),
//                   child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Certificate Link',
//                           prefixIcon: Icon(Icons.language)
//                         ),
//                       ),
//               ),
//                SizedBox(
//                 height: 20.0,
//               ),
//                Container(
//                 margin: EdgeInsets.only(left: 12.0,right: 12.0),
//                   child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Formation Place',
//                           prefixIcon: Icon(Icons.location_on)
//                         ),
//                       ),
//               ),
                
//                 SizedBox(
//                 height: 20.0,
//               ),
//                  Container(
//                    margin: EdgeInsets.only(left: 12.0,right: 12.0),
//                   child:  RaisedButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5.0)),
//                 elevation: 1.0,
//                 onPressed: () {
//                   DatePicker.showDatePicker(context,
//                       theme: DatePickerTheme(
//                         containerHeight: 210.0,
//                       ),
//                       showTitleActions: true,
//                       minTime: DateTime(1900, 1, 1),
//                       maxTime: DateTime(2150, 12, 31), onConfirm: (date1) {
//                     print('confirm $date1');
//                     _date = '${date1.year} - ${date1.month} - ${date1.day}';
//                     setState(() {});
//                   }, currentTime: DateTime.now(), locale: LocaleType.en);
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: 50.0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Row(
//                         children: <Widget>[
//                           Container(
//                             child: Row(
//                               children: <Widget>[
//                                 Icon(
//                                   Icons.date_range,
//                                   size: 18.0,
//                                   color: Colors.grey,
//                                 ),
//                                 Text(
//                                   " $_date",
//                                   style: TextStyle(
//                                       color: Colors.grey,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 18.0),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       Text(
//                         "  ",
//                         style: TextStyle(
//                             color: Colors.grey,fontSize: 12,
                            
//                             ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 color: Colors.white,
//               )
//                   ),
//                   SizedBox(
//                     height: 20.0,
//                   ),
//  Container(
//    margin: EdgeInsets.only(left: 12.0,right: 12.0),
//                   child:  RaisedButton(
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(5.0)),
//                 elevation: 1.0,
//                 onPressed: () {
//                   DatePicker.showDatePicker(context,
//                       theme: DatePickerTheme(
//                         containerHeight: 210.0,
//                       ),
//                       showTitleActions: true,
//                       minTime: DateTime(1900, 1, 1),
//                       maxTime: DateTime(2150, 12, 31), onConfirm: (date) {
//                     print('confirm $date');
//                     _date2 = '${date.year} - ${date.month} - ${date.day}';
//                     setState(() {});
//                   }, currentTime: DateTime.now(), locale: LocaleType.en);
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   height: 50.0,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: <Widget>[
//                       Row(
//                         children: <Widget>[
//                           Container(
//                             child: Row(
//                               children: <Widget>[
//                                 Icon(
//                                   Icons.date_range,
//                                   size: 18.0,
//                                   color: Colors.grey,
//                                 ),
//                                 Text(
//                                   " $_date2",
//                                   style: TextStyle(
//                                       color: Colors.grey,
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 18.0),
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                       Text(
//                         "  Formation End Date",
//                         style: TextStyle(
//                             color: Colors.grey,
                            
//                             ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 color: Colors.white,
//               )
//                   ),



//             ],
//           ),
//         ),

//       ),
      floatingActionButton: FloatingActionButton.extended(
        icon: Icon(Icons.add),
        label: Text("Add Formation"),
        onPressed: (){
          final snackBar = SnackBar(
            content: Text('Yay! A SnackBar!'),
            action: SnackBarAction(label: 'click',
            onPressed: ()=>print("fuck"),
            ));
        },
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