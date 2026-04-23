import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_components/angular_components.dart';
import '../../components/button_component/button_component.dart';
import '../../services/course_room_service.dart';
import '../../services/messages_service.dart';

@Component(
    directives: [
      NgFor,
      MaterialTooltipDirective,
      MaterialPaperTooltipComponent,
      MaterialTooltipTargetDirective,
      ClickableTooltipTargetDirective,
      MaterialInkTooltipComponent,
      MaterialIconTooltipComponent,
      MaterialPopupComponent,
      ButtonComponent,
      RouterLink
    ],
    providers: [],
    selector: 'p-course_room_buttons',
    styleUrls: ['course_room_buttons_component.css'],
    templateUrl: 'course_room_buttons_component.html')
class CourseRoomButtonsComponent {
  CourseRoomButtonsComponent(this.courseRoomService, this.msg);

  CourseRoomService courseRoomService;
  MessagesService msg;
  List<RelativePosition> preferredTooltipPositions = const [
    RelativePosition.AdjacentBottom
  ];
}
