import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_components/utils/angular/scroll_host/angular_2.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/course_room.dart';
import '../../models/document.dart';
import '../../models/resource.dart';
import '../../models/video.dart';
import '../../services/course_room_service.dart';
import '../../services/document_service.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';
import '../../services/rise_service.dart';
import '../../services/video_service.dart';
import '../button_component/button_component.dart';
import '../carousel_component/carousel_component.dart';
import '../documents_component/documents_component.dart';
import '../word_list_component/word_list_component.dart';

@Component(
    directives: [
      ButtonComponent,
      CarouselComponent,
      MaterialStepperComponent,
      NgIf,
      NgFor,
      StepDirective,
      FoModalComponent,
      WordListComponent,
      RouterLink,
      MaterialTooltipDirective,
      MaterialPaperTooltipComponent,
      MaterialTooltipTargetDirective,
      ClickableTooltipTargetDirective,
      MaterialInkTooltipComponent,
      MaterialIconTooltipComponent,
      MaterialPopupComponent,
      DocumentsComponent
    ],
    providers: [scrollHostProviders],
    selector: 'p-course-room-for-curious',
    styleUrls: ['course_room_component.css'],
    templateUrl: 'course_room_component.html',
    pipes: [CapitalizePipe])
class CourseRoomComponent implements OnActivate {
  CourseRoomComponent(this.msg, this.videoService, this.courseRoomService,
      this.documentService, this.quizService, this.riseService);

  @override
  void onActivate(RouterState previous, RouterState current) async {
    url = current.path.split('/').last;

    model = courseRoomService.data.values.firstWhere(
        (resource) => resource.phrases[msg.currentLanguage].url == url);

    if (model != null) {
      videos = model.video_ids
          .map((v) => videoService.data[v])
          .toList(growable: true);

      for (var i = 0; i < model.resources_ids.length; i++) {
        Resource resource;
        resource = quizService.data[model.resources_ids[i]];
        resource ??= riseService.data[model.resources_ids[i]];
        resources.add(resource);
      }

      documents = model.document_ids
          .map((id) => documentService.data[id])
          .toList(growable: false);
    }
  }

  String getLink(Resource resource) =>
      '${msg.currentLanguage}/${msg.home_url}/$url/${resource.phrases[msg.currentLanguage].url}';

  final MessagesService msg;
  final VideoService videoService;
  final QuizService quizService;
  final RiseService riseService;
  List<Video> videos;
  List<Resource> resources = [];
  List<Document> documents;
  CourseRoom model;
  final CourseRoomService courseRoomService;
  final DocumentService documentService;
  bool wordListModalVisible = false;
  String url;
  List<RelativePosition> preferredTooltipPositions = const [
    RelativePosition.AdjacentBottom
  ];
}
