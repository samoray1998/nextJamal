import 'package:bloc/bloc.dart';
import 'package:second_app/pages/homepage.dart';
import 'package:second_app/pages/account.dart';
import 'package:second_app/pages/personnalInfo.dart';
import 'package:second_app/pages/formation.dart';
import 'package:second_app/pages/AddFormation.dart';
import 'package:second_app/pages/skills.dart';
import 'package:second_app/pages/AddSkill.dart';
import 'package:second_app/pages/experince.dart';
import 'package:second_app/pages/ExperinceList.dart';
import 'package:second_app/pages/AddLangauge.dart';
import 'package:second_app/pages/SeeLangauge.dart';
enum NavigationEvents{
  HomePageClickEvent,
  AccountPageClickEvent,
  PersonalInfosClickEvent,
  FormationClickEvent,
  AddFormationClickEvent,
  AddSkillsClickEvent,
  SecondAddSkillClickEvent,
  AddExperinceClickEvent,
  SeeExperinceListClickEvent,
  AddLangaugeClickEvent,
  SeeLangaugeClickEvent,
  }
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
       case NavigationEvents.SeeExperinceListClickEvent:yield ExpirinceListPage();
       
       break;
       case NavigationEvents.FormationClickEvent:yield formation();
       
       break;
        case NavigationEvents.PersonalInfosClickEvent:yield PersonalInfos();
       
       break;
        case NavigationEvents.AddFormationClickEvent:yield addformation();
       
       break;
       case NavigationEvents.AddSkillsClickEvent:yield skill();
       
       break;
        case NavigationEvents.SecondAddSkillClickEvent:yield AddSkillPage();
       
       break;
       case NavigationEvents.AddExperinceClickEvent:yield ExperincePage();
       
       break;
        case NavigationEvents.AddLangaugeClickEvent:yield AddlangaugePage();
       
       break;
        case NavigationEvents.SeeLangaugeClickEvent:yield SeeLanguagePage();
       
       break;
     default:
   }
  }

}