import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_router/angular_router.dart';
import '../../models/document.dart';
import '../../services/messages_service.dart';

@Component(
    directives: [
      NgIf,
      NgFor,
      MaterialIconComponent,
      RouterLink,
      FoIconComponent
    ],
    selector: 'p-document',
    styleUrls: ['document_component.css'],
    templateUrl: 'document_component.html',
    pipes: [CapitalizePipe])
class DocumentComponent {
  DocumentComponent(this.msg);

  @Input('model')
  Document model;
  MessagesService msg;
}
