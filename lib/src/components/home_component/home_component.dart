import 'dart:html' as html;
import 'package:angular_router/angular_router.dart';
import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/resource.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';
import '../../services/quick_action_service.dart';
import '../../services/video_service.dart';
import '../carousel_component/carousel_component.dart';
import '../course_room_component/course_room_component.dart';
import '../fullscreen_component/fullscreen_component.dart';
import '../main_header_component/main_header_component.dart';
import '../make_difference_component/make_difference_component.dart';
import '../quick_action_component/quick_action_component.dart';
import '../quick_actions_component/quick_actions_component.dart';

@Component(
    selector: 'p-home',
    templateUrl: 'home_component.html',
    styleUrls: const [
      'home_component.css'
    ],
    directives: [
      FullscreenComponent,
      CarouselComponent,
      MainHeaderComponent,
      MakeDifferenceComponent,
      QuickActionsComponent,
      NgFor,
      NgIf,
      FoYouTubePlayerComponent,
      QuickActionComponent,
      CourseRoomComponent,
      routerDirectives
    ],
    providers: [],
    pipes: [
      NamePipe
    ])
class HomeComponent {
  HomeComponent(
      this.quickActionService, this.router, this.msg, this.videoService) {
    videos = [
      videoService.data['Goda exempel - sanering'],
      videoService.data['Goda exempel - skötsel'],
      videoService.data['Goda exempel - installation'],
    ];

    resources = [
      quickActionService.data['kursrum-for-tandvardsteam'],
      quickActionService.data['kursrum-for-dentaltekniker'],
      quickActionService.data['lagar-och-regler'],
      quickActionService.data['kursrum-for-servicetekniker'],
      quickActionService.data['for-dig-som-ar-nyfiken'],
      quickActionService.data['Quiz vad har du lärt dig?'],
    ];
  }
  void scrollTo(String comp) {
    switch (comp) {
      case 'carousel':
        html.window.scrollTo(0, carousel.offsetTop);
        break;

      default:
        break;
    }
  }

  QuickActionService quickActionService;
  List<Resource> resources;
  Router router;
  MessagesService msg;
  List<Video> videos;
  VideoService videoService;

  @ViewChild('carousel')
  html.Element carousel;
}
