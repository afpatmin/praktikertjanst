import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';

@Component(
    selector: 'p-video',
    templateUrl: 'video_component.html',
    styleUrls: ['video_component.css'],
    directives: [],
    providers: [MessagesService],
    pipes: [CapitalizePipe])
class VideoComponent implements OnInit, OnActivate {
  VideoComponent(this.sanitizer, this.msg);

  @override
  void onActivate(RouterState previous, RouterState current) async {
    if (model != null) {
      model.complete = true;
    }
  }

  @override
  void ngOnInit() {
    url = sanitizer
        .bypassSecurityTrustResourceUrl(model.url[msg.currentLanguage]);
  }

  @Input('model')
  Video model;

  @Input('height')
  int height = 35;

  final DomSanitizationService sanitizer;
  SafeResourceUrl url;
  MessagesService msg;
}
