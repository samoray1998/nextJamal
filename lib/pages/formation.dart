

import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class formation extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myformation();
  }

}
class myformation extends State<formation>{
String _date="Fomation Start Date";
   String _date2= "Formation End Date";
_onAlertWithCustomContentPressed(context) {
    Alert(
        context: context,
        title: "Add Formation",
        content: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
                  child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Formation Name',
                          prefixIcon: Icon(Icons.school)
                        ),
                      ),
              ),
               SizedBox(
                height: 20.0,
              ),
              Container(
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
                  child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Certificate Link',
                          prefixIcon: Icon(Icons.language)
                        ),
                      ),
              ),
               SizedBox(
                height: 20.0,
              ),
               Container(
                margin: EdgeInsets.only(left: 12.0,right: 12.0),
                  child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Formation Place',
                          prefixIcon: Icon(Icons.location_on)
                        ),
                      ),
              ),
                
                SizedBox(
                height: 20.0,
              ),
                 Container(
                   margin: EdgeInsets.only(left: 12.0,right: 12.0),
                  child:  RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 1.0,
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
                                  size: 18.0,
                                  color: Colors.grey,
                                ),
                                Text(
                                  " $_date",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      
                    ],
                  ),
                ),
                color: Colors.white,
              )
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
 Container(
   margin: EdgeInsets.only(left: 12.0,right: 12.0),
                  child:  RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                elevation: 1.0,
                onPressed: () {
                  DatePicker.showDatePicker(context,
                      theme: DatePickerTheme(
                        containerHeight: 210.0,
                      ),
                      showTitleActions: true,
                      minTime: DateTime(1900, 1, 1),
                      maxTime: DateTime(2150, 12, 31), onConfirm: (date) {
                    print('confirm $date');
                    _date2 = '${date.year} - ${date.month} - ${date.day}';
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
                                  size: 18.0,
                                  color: Colors.grey,
                                ),
                                Text(
                                  " $_date2",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                     
                    ],
                  ),
                ),
                color: Colors.white,
              )
                  ),


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
  


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     appBar: AppBar(
       title: Text("Formation"),
       
       centerTitle: true,
        automaticallyImplyLeading: false,
     ), 
     body: Container(
       padding: EdgeInsets.only(top: 30),
       child:ListView(
         children: <Widget>[
          Container(
            child:Slidable(
              delegate: new SlidableDrawerDelegate(),
              child: Container(
                color: Colors.white,
                child: ListTile(
                   leading: Image.asset("assets/Formation.png",width: 50,height: 50,),
                   title: Container(
                     alignment: Alignment.topLeft,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Text("- Foramtion Name",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w600),),
                         InkWell(
                           child: Text("www.certificatelink.com",style: TextStyle(color: Colors.blue)),
                           onTap: ()=>{},
                         ),
                         Text("Duration:2017/9/10,2018/6/31"),
                       ],
                     ),
                   ),
                ),
              ),
              secondaryActions: <Widget>[
    new IconSlideAction(
      caption: 'Edit',
      color: Colors.black45,
      icon: Icons.edit,
      onTap: () =>print("more"),
    ),
    new IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () =>print("Delete"),
    ),
  ],
            )
          ),
          Container(
            child:Slidable(
              delegate: new SlidableDrawerDelegate(),
              child: Container(
                color: Colors.white,
                child: ListTile(
                   leading: Image.asset("assets/Formation.png",width: 50,height: 50,),
                   title: Container(
                     alignment: Alignment.topLeft,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Text("- Foramtion Name",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w600),),
                         InkWell(
                           child: Text("www.certificatelink.com",style: TextStyle(color: Colors.blue)),
                           onTap: ()=>{},
                         ),
                         Text("Duration:2017/9/10,2018/6/31"),
                       ],
                     ),
                   ),
                ),
              ),
              secondaryActions: <Widget>[
    new IconSlideAction(
      caption: 'Edit',
      color: Colors.black45,
      icon: Icons.edit,
      onTap: () =>print("more"),
    ),
    new IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () =>print("Delete"),
    ),
  ],
            )
          ),
          Container(
            child:Slidable(
              delegate: new SlidableDrawerDelegate(),
              child: Container(
                color: Colors.white,
                child: ListTile(
                   leading: Image.asset("assets/Formation.png",width: 50,height: 50,),
                   title: Container(
                     alignment: Alignment.topLeft,
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Text("- Foramtion Name",textAlign: TextAlign.left, style: TextStyle(fontWeight: FontWeight.w600),),
                         InkWell(
                           child: Text("www.certificatelink.com",style: TextStyle(color: Colors.blue)),
                           onTap: ()=>{},
                         ),
                         Text("Duration:2017/9/10,2018/6/31"),
                       ],
                     ),
                   ),
                ),
              ),
              secondaryActions: <Widget>[
    new IconSlideAction(
      caption: 'Edit',
      color: Colors.black45,
      icon: Icons.edit,
      onTap: () =>print("more"),
    ),
    new IconSlideAction(
      caption: 'Delete',
      color: Colors.red,
      icon: Icons.delete,
      onTap: () =>print("Delete"),
    ),
  ],
            )
          )
         ],
       ),
      //  child: Column(
      //    children: <Widget>[
      //     //  Slidable(
      //     //    delegate: new SlidableDrawerDelegate(),
      //     //    child:Container(
      //     //      color: Colors.white,
      //     //      child: ListTile(
      //     //        leading: Image.asset("assets/Formation.png",width: 50,height: 50,),
      //     //        title: Container(
      //     //          child: Column(
      //     //            children: <Widget>[
      //     //              Expanded(
      //     //                child: Text("formation name"),
      //     //              )
      //     //            ],
      //     //          ),
      //     //        ),
      //     //      ),
      //     //    )

      //     //  )
      //     Text("fuck hhh ")
      //    ],
      //  ),
       ),
    //  floatingActionButton: FloatingActionButton(
    //    child: Icon(Icons.save),
    //    onPressed:() => _onAlertWithCustomContentPressed(context) ,
    //    ),
    );






  }
}

