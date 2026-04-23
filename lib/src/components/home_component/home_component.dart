import 'dart:html' as html;
import 'package:angular_router/angular_router.dart';
import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular/security.dart';
import '../../models/resource.dart';
import '../../models/video.dart';
import '../../services/course_room_service.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';
import '../../services/rise_service.dart';
import '../../services/video_service.dart';
import '../button_component/button_component.dart';
import '../carousel_component/carousel_component.dart';
import '../course_room_buttons_component/course_room_buttons_component.dart';
import '../course_room_component/course_room_component.dart';
import '../fullscreen_component/fullscreen_component.dart';
import '../main_header_component/main_header_component.dart';
import '../make_difference_component/make_difference_component.dart';
import '../resource_component/resource_component.dart';

@Component(selector: 'p-home', templateUrl: 'home_component.html', styleUrls: [
  'home_component.css'
], directives: [
  FullscreenComponent,
  CarouselComponent,
  MainHeaderComponent,
  MakeDifferenceComponent,
  NgFor,
  NgIf,
  ResourceComponent,
  CourseRoomComponent,
  routerDirectives,
  ButtonComponent,
  CourseRoomButtonsComponent,
  MaterialButtonComponent
], providers: [], pipes: [
  CapitalizePipe
])
class HomeComponent {
  HomeComponent(this.router, this.msg, this.videoService, this.riseService,
      this.courseRoomService, this.quizService, this.sanitizer) {
    videos = [
      videoService.data['Så upplevde vi saneringen'],
      videoService.data['Så minimerar vi utsläppen'],
      videoService.data['Så går en installation till'],
      videoService.data['Att lämna amalgam bakom sig']
    ];

    resources = [
      riseService.data['Kvicksilver i naturen'],
      riseService.data['Lagar och regler'],
      riseService.data['Vad är vad på mottagningen?'],
    ];
    getYoutubeUrl(msg.currentLanguage);
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

  void getYoutubeUrl(String languagecode) {
    String id;
    switch (languagecode) {
      case 'en':
        id = '8GEA3BPqWlQ';
        break;

      case 'sv':
        id = 'PGBq5N9ZdOQ';
        break;

      case 'fr':
        id = 'QUQZtdnNbgE';
        break;

      case 'es':
        id = 'FgaSjc5_XTY';
        break;

      case 'de':
        id = 'hxkxeqDT3YU';
        break;
    }
    url = sanitizer.bypassSecurityTrustResourceUrl(
        'https://www.youtube.com/embed/$id?autoplay=1&fs=0&loop=1&playlist=$id&modestbranding=1&color=white&rel=0&showinfo=0&mute=1&controls=0');
  }

  String background(String url) => "url('$url')";

  List<Resource> resources;
  Router router;
  MessagesService msg;
  List<Video> videos;
  VideoService videoService;
  CourseRoomService courseRoomService;
  RiseService riseService;
  QuizService quizService;
  final DomSanitizationService sanitizer;
  SafeResourceUrl url;

  @ViewChild('carousel')
  html.Element carousel;
}
