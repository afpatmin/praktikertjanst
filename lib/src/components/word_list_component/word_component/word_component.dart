import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import 'package:fo_components/components/fo_carousel/fo_carousel_slide_component.dart';
import '../../../models/word.dart';
import '../../../services/messages_service.dart';


@Component(
    selector: 'p-word',
    templateUrl: 'word_component.html',
    styleUrls: ['word_component.css'],
    directives: [FoCarouselComponent, FoCarouselSlideComponent, NgFor, NgIf])
class WordComponent {
  WordComponent(this.msg);

  @Input()
  Word model;

  final MessagesService msg;
}
