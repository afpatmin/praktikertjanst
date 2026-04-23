import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../components/about_component/about_component.template.dart' as ac;
import '../components/course_room_component/course_room_component.template.dart'
    as crc;
import '../components/home_component/home_component.template.dart' as hc;
import '../components/library_component/library_component.template.dart' as lc;
import '../components/resource_wraper_component/resource_wraper_component.template.dart'
    as rwc;
import '../services/messages_service.dart';

@Injectable()
class Routes {
  List<RouteDefinition> all;

  void init(MessagesService msg) {
    all = [
      RouteDefinition(
          path: ':lang/${msg.home_url}',
          component: hc.HomeComponentNgFactory,
          useAsDefault: true),
      RouteDefinition(
        path: ':lang/${msg.home_url}/${msg.library_url}',
        component: lc.LibraryComponentNgFactory,
      ),
      RouteDefinition(
        path: ':lang/${msg.home_url}/${msg.course_room_for_curious_url}',
        component: crc.CourseRoomComponentNgFactory,
      ),
      RouteDefinition(
        path: ':lang/${msg.home_url}/${msg.course_room_for_curious_url}/:url',
        component: rwc.ResourceWrapperComponentNgFactory,
      ),
      RouteDefinition(
        path: ':lang/${msg.home_url}/${msg.course_room_for_dental_teams_url}',
        component: crc.CourseRoomComponentNgFactory,
      ),
      RouteDefinition(
        path:
            ':lang/${msg.home_url}/${msg.course_room_for_dental_teams_url}/:url',
        component: rwc.ResourceWrapperComponentNgFactory,
      ),
      RouteDefinition(
        path:
            ':lang/${msg.home_url}/${msg.course_room_for_service_technicians_url}',
        component: crc.CourseRoomComponentNgFactory,
      ),
      RouteDefinition(
        path:
            ':lang/${msg.home_url}/${msg.course_room_for_service_technicians_url}/:url',
        component: rwc.ResourceWrapperComponentNgFactory,
      ),
      RouteDefinition(
        path:
            ':lang/${msg.home_url}/${msg.course_room_for_environmental_service_companies_url}',
        component: crc.CourseRoomComponentNgFactory,
      ),
      RouteDefinition(
        path:
            ':lang/${msg.home_url}/${msg.course_room_for_environmental_service_companies_url}/:url',
        component: rwc.ResourceWrapperComponentNgFactory,
      ),
      RouteDefinition(
        path: ':lang/${msg.home_url}/${msg.contact}',
        component: ac.AboutComponentNgFactory,
      ),
      RouteDefinition(
        path: ':lang/${msg.home_url}/:url',
        component: rwc.ResourceWrapperComponentNgFactory,
      ),
      RouteDefinition(
        path: ':lang/${msg.home_url}/${msg.library_url}/:url',
        component: rwc.ResourceWrapperComponentNgFactory,
      ),
      RouteDefinition.redirect(
        path: '.+',
        redirectTo: '${msg.currentLanguage}/${msg.home_url}',
      ),
      RouteDefinition.redirect(
        path: '',
        redirectTo: '${msg.currentLanguage}/${msg.home_url}',
      )
    ];
  }
}
