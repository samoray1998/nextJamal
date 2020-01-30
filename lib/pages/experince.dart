import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
class ExperincePage extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() =>Experince();
  }
  
  class Experince extends State<ExperincePage> {
    String _date="Set Data";
   String _date2= "Set Date";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Add An Experince"),
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
        child: Form(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  child:   Column(
               children: <Widget>[
                
                 Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                        "Post Name",
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
                            hintText: 'Post',
                            prefixIcon: Icon(Icons.work),
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
              )
              ,
              SizedBox(
                height: 20,
              ),
              Container(
                  child:   Column(
               children: <Widget>[
                
                 Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                        "Company Name",
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
                            hintText: 'Company...',
                            prefixIcon: Icon(Icons.next_week),
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
                SizedBox(
                  height: 20,
                ),
                Container(
                  child:   Column(
               children: <Widget>[
                
                 Container(
                   alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                        "Company Adress",
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
                            hintText: 'Adress...',
                            prefixIcon: Icon(Icons.location_on),
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
                SizedBox(
                  height: 20,
                ),
                Column(children: <Widget>[
                   Container(
                      alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "Date Of Start",
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
                   height: 20,
                 ),
                Column(children: <Widget>[
                   Container(
                      alignment: Alignment.bottomLeft,
                   child: new Padding(
                     padding: const EdgeInsets.only(left: 40),
                     child: Text(
                       "Date Of End",
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
                    _date = '${date1.year} - ${date1.month} - ${date1.day}';
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
                )))
                 ],), 
            ],
          ),
        ),
      ),
floatingActionButton: FloatingActionButton.extended(
  icon: Icon(Icons.add),
  label: Text("Add Experince"),
  onPressed: ()=>print("Seccuss"),
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