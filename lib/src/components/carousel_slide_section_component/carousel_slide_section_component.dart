import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';

@Component(
    directives: [NgIf],
    providers: [materialProviders],
    selector: 'p-carousel-slide-section',
    styleUrls: ['carousel_slide_section_component.css'],
    templateUrl: 'carousel_slide_section_component.html',
    pipes: [CapitalizePipe])
class CarouselSlideSectionComponent {
  CarouselSlideSectionComponent(this.sanitizer, this.msg);

  void onModelClick(Video model) {
    safeUrl = sanitizer.bypassSecurityTrustResourceUrl(
        (model.phrases[msg.currentLanguage].url));
  }

  @Input()
  Video model;

  Video selectedModel;
  SafeResourceUrl safeUrl;
  final DomSanitizationService sanitizer;
  MessagesService msg;
}
