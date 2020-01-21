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


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Personal Infos'), 
          centerTitle: true,// _edit
          automaticallyImplyLeading: false,
        ),
        body: Container(
              margin: EdgeInsets.only(left: 20,right: 20),
          child: Container(
            child: ListView(
              padding: EdgeInsets.symmetric(vertical: 10),
              
              children: <Widget>[
                SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    // Text('F.name : '),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'first name',
                          prefixIcon: Icon(Icons.person)
                        ),
                      ),
                    )
                  ],
                ),
                  SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    // Text('F.name : '),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Last name',
                          prefixIcon: Icon(Icons.person)
                        ),
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    // Text('F.name : '),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Email Address',
                          prefixIcon: Icon(Icons.mail)
                        ),
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 15,),
                Row(
                  children: <Widget>[
                    // Text('F.name : '),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Phone number',
                          
                          prefixIcon: Icon(Icons.phone)
                        ),
                        
                      ),
                    ),
                  ],
                ),
                  SizedBox(height: 10,),

                Row(
                  children: <Widget>[
                    // Text('F.name : '),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Birth City',
                          
                          prefixIcon: Icon(Icons.location_city)
                        ),
                        
                      ),
                    ),
                  ],
                ),

                 SizedBox(height: 15,),

                Row(
                  children: <Widget>[
                    // Text('F.name : '),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Home Address',
                          
                          prefixIcon: Icon(Icons.home)
                        ),
                        
                      ),
                    ),
                  ],
                ),

                   SizedBox(height: 10,),

                Row(
                  children: <Widget>[
                    // Text('F.name : '),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'National identity Card Nomber',
                          
                          prefixIcon: Icon(Icons.assignment_ind)
                        ),
                        
                      ),
                    ),
                  ],
                ),

                   SizedBox(height: 10,),

                // Row(
                //   children: <Widget>[
                //     // Text('F.name : '),
                //     // Expanded(
                //     //   child: TextFormField(
                //     //     decoration: InputDecoration(
                //     //       hintText: 'Country ',
                          
                //     //       prefixIcon: Icon(Icons.place)
                //     //     ),//saadDropDown ,
                //     //   ),
                //     // ),
                    
                //   ],
                // ),
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
               Container(
                //  padding: EdgeInsets.only(left: 100),
                 child:FloatingActionButton.extended(onPressed: ()=>print("save changes"),
                   backgroundColor: Colors.blueAccent,
                    icon: Icon(Icons.save) ,
                    label:Text("Save Changes")
                 
               ),
                
        
        )

                
              ],
            ),
          ),
        ),
        // floatingActionButton: FloatingActionButton(onPressed: ()=>print("save changes"),
        // backgroundColor: Colors.blueAccent,
        // child: Icon(Icons.save),
        
        // ),
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