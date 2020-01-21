import 'package:bloc/bloc.dart';
import 'package:second_app/pages/homepage.dart';
import 'package:second_app/pages/account.dart';
import 'package:second_app/pages/personnalInfo.dart';
enum NavigationEvents{HomePageClickEvent,AccountPageClickEvent,PersonalInfosClickEvent}
abstract class NavigationStates {}
class Navigationitems extends Bloc<NavigationEvents,NavigationStates>{
  @override
  // TODO: implement initialState
  NavigationStates get initialState => homepage();

  @override
  Stream<NavigationStates> mapEventToState(NavigationEvents event) async* {
    // TODO: implement mapEventToState
   switch (event) {
     case NavigationEvents.HomePageClickEvent:yield homepage();
       
       break;
       case NavigationEvents.AccountPageClickEvent:yield accountpage();
       
       break;
       case NavigationEvents.PersonalInfosClickEvent:yield PersonalInfos();
       
       break;
     default:
   }
  }

}