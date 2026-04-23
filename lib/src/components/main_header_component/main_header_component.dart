import 'dart:async';
import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:fo_components/fo_components.dart';
import '../../services/messages_service.dart';
import '../button_component/button_component.dart';

@Component(
    directives: [MaterialIconComponent, ButtonComponent],
    providers: [],
    selector: 'p-main-header',
    styleUrls: ['main_header_component.css'],
    templateUrl: 'main_header_component.html',
    pipes: [CapitalizePipe],
    changeDetection: ChangeDetectionStrategy.OnPush)
class MainHeaderComponent implements OnDestroy {
  MainHeaderComponent(this.msg);

  @override
  void ngOnDestroy() {
    buttonClickController.close();
  }

  @Output('buttonClick')
  Stream<String> get buttonClick => buttonClickController.stream;

  MessagesService msg;
  final StreamController<String> buttonClickController = StreamController();
}
