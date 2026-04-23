import 'dart:html';
import 'package:angular/angular.dart';

@Component(
  selector: 'd-fullscreen',
  templateUrl: 'fullscreen_component.html',
  styleUrls: ['fullscreen_component.css'],
)
class FullscreenComponent {
  FullscreenComponent(this.host);

  void activate() {}
  String get borderTop => '${offsetTop}px solid transparent';

  final Element host;

  @Input()
  int offsetTop = 0;
  @Input()
  String backgroundImage;

  @Input()
  String maxHeight;
}
