import 'package:bloc/bloc.dart';
import 'package:second_app/pages/homepage.dart';
import 'package:second_app/pages/account.dart';
import 'package:second_app/pages/personnalInfo.dart';
import 'package:second_app/pages/formation.dart';
import 'package:second_app/pages/AddFormation.dart';
import 'package:second_app/pages/skills.dart';
enum NavigationEvents{
  HomePageClickEvent,
  AccountPageClickEvent,
  PersonalInfosClickEvent,
  FormationClickEvent,
  AddFormationClickEvent,
  AddSkillsClickEvent}
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
       case NavigationEvents.FormationClickEvent:yield formation();
       
       break;
        case NavigationEvents.PersonalInfosClickEvent:yield PersonalInfos();
       
       break;
        case NavigationEvents.AddFormationClickEvent:yield addformation();
       
       break;
       case NavigationEvents.AddSkillsClickEvent:yield skill();
       
       break;
     default:
   }
  }

}