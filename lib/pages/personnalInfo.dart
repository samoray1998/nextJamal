import 'package:flutter/material.dart';
import 'package:second_app/navigation_items/navigation.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
// import '';

class PersonalInfos extends StatefulWidget with NavigationStates{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return myPersonnalInfo();
  }
   
  // DropDown saadDropDown = new DropDown();

 
}
class myPersonnalInfo extends State<PersonalInfos>{
  static List<CountryModel> _dropdownItems = new List();
  String _date="set date";
  bool _ishovered=false;
   CountryModel _dropdownValue;
  String _errorText;
  TextEditingController phoneController = new TextEditingController();
 
  Widget _buildCountry() {
return FormField(
  builder: (FormFieldState state) {
    return DropdownButtonHideUnderline(
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          new InputDecorator(
            decoration: InputDecoration(
              filled: false,
              hintText: 'Choose Country',
              prefixIcon: Icon(Icons.location_on),
              labelText:
                  _dropdownValue == null ? 'Where are you from' : 'From',
              errorText: _errorText,
            ),
            isEmpty: _dropdownValue == null,
            child: new DropdownButton<CountryModel>(
              value: _dropdownValue,
              isDense: true,
              onChanged: (CountryModel newValue) {
                print('value change');
                print(newValue);
                setState(() {
                  _dropdownValue = newValue;
                  phoneController.text = _dropdownValue.countryCode;
                });
              },
              items: _dropdownItems.map((CountryModel value) {
                return DropdownMenuItem<CountryModel>(
                  value: value,
                  child: Text(value.country),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  },
);
  }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      _dropdownItems.add(CountryModel(country: 'India', countryCode: '+91'));
      _dropdownItems.add(CountryModel(country: 'USA', countryCode: '+1'));
      _dropdownValue = _dropdownItems[0];
      phoneController.text = _dropdownValue.countryCode;
    });
  }
  Widget mytextfield (String hint,IconData icon ){
    return  TextField(
      
              decoration: new InputDecoration(
                prefixIcon: Icon(icon,color:Colors.grey,),
                focusedBorder: OutlineInputBorder(
                  
                  borderSide: BorderSide(color: Colors.greenAccent, width: 1.0,),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
                  
                ),
                hintText: hint,
              ),);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text('Personal Infos'), 
        //   centerTitle: true,// _edit
        //   automaticallyImplyLeading: false,
        // ),
        body: Container(
              margin: EdgeInsets.only(left: 20,right: 20),
          child: Form(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 80),
              
              children: <Widget>[
               
               Container(
                 margin: EdgeInsets.only(left: 35),
                 child: Text("Let Recruiters Know More About You :",style: TextStyle(fontFamily: "Open Sens",fontSize: 18,fontWeight: FontWeight.w500),),

               ),
                SizedBox(height: 20,),
  
                    Container(
                      margin: EdgeInsets.only(left: 18,right: 20),
                      
                      child:  TextFormField(
                keyboardType:TextInputType.text,
                // controller:new TextEditingController(text:),
                decoration: const InputDecoration(
                 suffixIcon:const Icon(Icons.person),
                  hintText: '...',
                  hintStyle :const TextStyle(color:const Color(0XFFFF80AB),fontSize:14.0),
                  labelText: 'First Name',
                )
                    ),
                    ),
                  SizedBox(height: 10,),
                     Container(
                      margin: EdgeInsets.only(left: 18,right: 20),
                      
                      child:  TextFormField(
                keyboardType:TextInputType.text,
                // controller:new TextEditingController(text:),
                decoration: const InputDecoration(
                 suffixIcon:const Icon(Icons.account_circle),
                  hintText: '...',
                  hintStyle :const TextStyle(color:const Color(0XFFFF80AB),fontSize:14.0),
                  labelText: 'Last Name',
                )
                    ),
                    ),
              
                 SizedBox(height: 15,),

                Container(
                      margin: EdgeInsets.only(left: 18,right: 20),
                      
                      child:  TextFormField(
                keyboardType:TextInputType.text,
                // controller:new TextEditingController(text:),
                decoration: const InputDecoration(
                 suffixIcon:const Icon(Icons.phone),
                  hintText: '...',
                  hintStyle :const TextStyle(color:const Color(0XFFFF80AB),fontSize:14.0),
                  labelText: 'Phone',
                )
                    ),
                    ),
                 SizedBox(height: 10,),
                  Container(
                      margin: EdgeInsets.only(left: 18,right: 20),
                      
                      child:  TextFormField(
                keyboardType:TextInputType.text,
                // controller:new TextEditingController(text:),
                decoration: const InputDecoration(
                 suffixIcon:const Icon(Icons.email),
                  hintText: '...',
                  hintStyle :const TextStyle(color:const Color(0XFFFF80AB),fontSize:14.0),
                  labelText: 'Email',
                )
                    ),
                    ),

                   SizedBox(height: 30,),

                Container(
                    margin: EdgeInsets.only(left: 18),
                     child: Text("Add More info:",style: TextStyle(fontFamily: "Open Sens",fontSize: 18,fontWeight: FontWeight.w500),),

                ),

                   SizedBox(height: 20,),
                   Container(
                      margin: EdgeInsets.only(left: 18,right: 20),
                      
                      child:  TextFormField(
                keyboardType:TextInputType.text,
                // controller:new TextEditingController(text:),
                decoration: const InputDecoration(
                 suffixIcon:const Icon(Icons.location_city),
                  hintText: '...',
                  hintStyle :const TextStyle(color:const Color(0XFFFF80AB),fontSize:14.0),
                  labelText: 'The City Of Your Birth',
                )
                    ),
                    ),

                

                _buildCountry(),
                   SizedBox(height: 10,),


                Container(
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
                    _date = '${date.year} - ${date.month} - ${date.day}';
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
                                      fontSize: 18.0),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      Text(
                        "  Birthday",
                        style: TextStyle(
                            color: Colors.grey,
                            
                            ),
                      ),
                    ],
                  ),
                ),
                color: Colors.white,
              )
                  ),


                 SizedBox(height: 40,),
               

                
              ],
            ),
          ),
        ),
         
                //  padding: EdgeInsets.only(left: 100),
      floatingActionButton:FloatingActionButton.extended(onPressed: ()=>print("save changes"),
                   backgroundColor: Colors.blueAccent,
                    icon: Icon(Icons.save) ,
                    label:Text("Save Changes")
                 
               ),
      )
    );
  }

}
class CountryModel {
  String country = '';
  String countryCode = '';

  CountryModel({
    this.country,
    this.countryCode,
  });
}










// import 'package:flutter/material.dart';
// import 'package:second_app/navigation_items/navigation.dart';

// class PersonalInfos extends StatelessWidget with NavigationStates {


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text('Personal Infos'), // _edit
//         ),
//         body: Container(
//           child: Form(

//             child: ListView(
//               padding: EdgeInsets.symmetric(vertical: 10),
//               children: <Widget>[
//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'First name',
//                           prefixIcon: Icon(Icons.person),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Last name',
//                           prefixIcon: Icon(Icons.person)
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Email Address',
//                           prefixIcon: Icon(Icons.mail)
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),

//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Phone number',
                          
//                           prefixIcon: Icon(Icons.phone)
//                         ),
                        
//                       ),
//                     ),
//                   ],
//                 ),


//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Birth City',
                          
//                           prefixIcon: Icon(Icons.location_city)
//                         ),
                        
//                       ),
//                     ),
//                   ],
//                 ),



//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Home Address',
                          
//                           prefixIcon: Icon(Icons.home)
//                         ),
                        
//                       ),
//                     ),
//                   ],
//                 ),



//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Card Id National Number',
                          
//                           prefixIcon: Icon(Icons.perm_identity)
//                         ),
                        
//                       ),
//                     ),
//                   ],
//                 ),



//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Country picker',
                          
//                           prefixIcon: Icon(Icons.place)
//                         ),//saadDropDown ,
//                       ),
//                     ),
//                   ],
//                 ),


//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Birth Date',
                          
//                           prefixIcon: Icon(Icons.date_range)
//                         ),
                        
//                       ),
//                     ),
//                   ],
//                 ),



//                 Row(
//                   children: <Widget>[
//                     // Text('F.name : '),
//                     Expanded(
//                       child: TextFormField(
//                         decoration: InputDecoration(
//                           hintText: 'Password',
                          
//                           prefixIcon: Icon(Icons.lock)
//                         ),
//                         obscureText: true,

//                       ),
//                     ),
//                   ],
//                 ),


                
//               ],
//             ),
//           ),
//         ),
//       )
//     );
//   }
// }
