import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:second_app/pages/menu_Items.dart';
import 'package:second_app/navigation_items/navigation.dart';
class sidebar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new mySidebar(
    
        );
      }
    
    }
    
    class mySidebar  extends State<sidebar> with SingleTickerProviderStateMixin<sidebar>{
      StreamController<bool> _isSidebarOpenStreamController;
      Stream<bool>_isSidebarOpenedStream;
      StreamSink<bool>_isSidebarOpenedSink;
      AnimationController _animationController;
    
      
    final  _animationduration=const Duration(microseconds: 500);
       void onIconPressed(){
         final animationStatus=_animationController.status;
         final isAnimationCompleted=animationStatus==AnimationStatus.completed;
         if (isAnimationCompleted) {
           _isSidebarOpenedSink.add(false);
           _animationController.reverse();
         } else {
           _isSidebarOpenedSink.add(true);
           _animationController.forward();
         }
       }

    @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration: _animationduration);
    _isSidebarOpenStreamController=PublishSubject<bool>();
    _isSidebarOpenedStream=_isSidebarOpenStreamController.stream;
    _isSidebarOpenedSink=_isSidebarOpenStreamController.sink;
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    _isSidebarOpenStreamController.close();
    _isSidebarOpenedSink.close();
    super.dispose();
  }
       

  @override
  Widget build(BuildContext context) {
    final screenwidth=MediaQuery.of(context).size.width;
    // TODO: implement build
    return new StreamBuilder<bool>(
      initialData: false,
      stream: _isSidebarOpenedStream,
     
      builder: (context,isSidebarOpenedAsyanc){
        return AnimatedPositioned(
      duration: _animationduration,
      top: 0,
      bottom: 0,
      left: isSidebarOpenedAsyanc.data ?0:-screenwidth,
      right: isSidebarOpenedAsyanc.data?0:screenwidth-45,

   child: Row(
     children: <Widget>[
       Expanded(
         child: Container(
            color: Color(0xFF42A5F5),
            
            child: ListView(
              children: <Widget>[
                SizedBox(
                  height: 100,

                ),
                ListTile(title:
                 Text(
                   "Username"
                   ,style: TextStyle(
                     color: Colors.white,
                     fontSize: 25.0,
                     fontWeight: FontWeight.w800
                     ),),
                     subtitle: Text("Username@gmail.com",style: TextStyle(color: Colors.white,fontSize: 15.0,),),
                     leading: CircleAvatar(
                       
                       backgroundColor: Colors.white,
                      //  child: Image.asset("assets/userIcon.png"),
                      child: Icon(Icons.perm_identity,
                      color: Colors.blueAccent,
                      ),
                      radius: 40,
                     
                       
                     ),
                      
                     ),

                    Divider(
                      height: 40.0,
                      thickness: 0.5,
                      color: Colors.white.withOpacity(0.4),
                      indent: 30,
                      endIndent: 10,
                    ) ,
                    MenuItem(icon: Icons.home,title: "Home",
                    onTap:(){
                      onIconPressed();
                      BlocProvider.of<Navigationitems>(context).add(NavigationEvents.HomePageClickEvent);
                    } ,
                    ),
                    MenuItem(icon: Icons.person,title: "Profile",
                    onTap: (){
                     onIconPressed();
                      BlocProvider.of<Navigationitems>(context).add(NavigationEvents.AccountPageClickEvent); 
                    },
                    ),
                    MenuItem(icon: Icons.collections_bookmark,title: "CV Templets",
                    onTap: (){
                     onIconPressed();
                      BlocProvider.of<Navigationitems>(context).add(NavigationEvents.PersonalInfosClickEvent); 
                    },
                    ),
                    MenuItem(icon: Icons.save,title: "Saved Templets",),
                    MenuItem(icon: Icons.settings,title: "Settings",),
                    MenuItem(icon: Icons.help,title: "Help",),
                    MenuItem(icon: Icons.insert_drive_file,title: "Legale & Policies",),
                    MenuItem(icon: Icons.exit_to_app,title: "Logout",)

              ],
            ),
         ),
       ),
       Align(
         alignment: Alignment(0, -0.9),
         child:GestureDetector(
           onTap: (){
             onIconPressed();
           },
           child:ClipPath(
             clipper: CustomMenuClipper(),
             child: Container(
           alignment: Alignment.centerLeft,
         width: 35,
         height: 110,
         color: Color(0xFF42A5F5),
         child: AnimatedIcon(
           progress: _animationController.view,
           
           icon: AnimatedIcons.menu_close,
           color: Colors.white,
           size: 25,
         ),
       )
           )
         
       ),
       )
      
     ],
    )
    );
      }
    );
        
    
  }
}
class CustomMenuClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Paint paint = Paint();
    paint.color = Colors.white;

    final width = size.width;
    final height = size.height;

    Path path = Path();
    path.moveTo(0, 0);
    path.quadraticBezierTo(0, 8, 10, 16);
    path.quadraticBezierTo(width - 1, height / 2 - 20, width, height / 2);
    path.quadraticBezierTo(width + 1, height / 2 + 20, 10, height - 16);
    path.quadraticBezierTo(0, height - 8, 0, height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}