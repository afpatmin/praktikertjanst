import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import 'package:fo_components/components/fo_carousel/fo_carousel_slide_component.dart';
import '../../models/slide.dart';
import '../../services/messages_service.dart';
import '../../services/slide_service.dart';
import '../button_component/button_component.dart';

@Component(
    directives: [
      NgStyle,
      NgIf,
      NgFor,
      FoModalComponent,
      routerDirectives,
      ButtonComponent,
      MaterialTooltipDirective,
      MaterialIconComponent,
      MaterialTooltipDirective,
      MaterialPaperTooltipComponent,
      MaterialTooltipTargetDirective,
      ClickableTooltipTargetDirective,
      MaterialInkTooltipComponent,
      MaterialIconTooltipComponent,
      MaterialPopupComponent,
      FoCarouselComponent,
      MaterialYesNoButtonsComponent,
      FoCarouselSlideComponent
    ],
    providers: [],
    selector: 'p-make-difference',
    styleUrls: ['make_difference_component.css'],
    templateUrl: 'make_difference_component.html',
    pipes: [CapitalizePipe])
class MakeDifferenceComponent {
  MakeDifferenceComponent(this.router, this.msg, this.slideService);

  String background(Slide slide) => "url('${slide.background_image}')";

  SlideService slideService;
  bool showModal = false;
  Router router;
  MessagesService msg;
  List<RelativePosition> preferredTooltipPositions = const [
    RelativePosition.AdjacentBottom
  ];
}
