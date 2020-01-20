import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:second_app/pages/homepage.dart';
import 'package:second_app/pages/sidebar.dart';
import 'package:second_app/navigation_items/navigation.dart';
class page1 extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new makeitrainstate();
      }
    
    
      
    }
    
    class makeitrainstate extends State<page1> {
     
      
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      body: BlocProvider<Navigationitems>(
        create: (context) => Navigationitems(),
        child: Stack(
          children: <Widget>[
            BlocBuilder<Navigationitems, NavigationStates>(
              builder: (context, navigationState) {
                return navigationState as Widget;
              },
            ),
            sidebar(),
          ],
        )
      )
    );
  }
}