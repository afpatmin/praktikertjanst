import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';
import 'package:angular_components/angular_components.dart';

@Component(
    directives: [
      MaterialTooltipDirective,
      MaterialIconComponent,
      NgIf,
      NgClass,
    ],
    pipes: [CapitalizePipe],
    selector: 'p-button',
    styleUrls: ['button_component.css'],
    templateUrl: 'button_component.html',
    changeDetection: ChangeDetectionStrategy.OnPush)
class ButtonComponent implements OnInit {
  String get textColor =>
      (currentMiddleBackgroundColor == middleHoverBackgroundColor)
          ? hoverTextColor
          : _textColor;

  @Input()
  String left;

  @Input()
  String middle;

  @Input()
  String right;

  @Input()
  set textColor(String value) => _textColor = value;

  @Input()
  String hoverTextColor = '#ffffff';

  @Input()
  String middleBackgroundColor = '#00A0C8';

  @Input()
  String leftBackgroundColor = '#00A0C8';

  @Input()
  String rightBackgroundColor = '#00A0C8';

  @Input()
  String middleHoverBackgroundColor = '#003C5A';

  String currentMiddleBackgroundColor;
  String currentLeftBackgroundColor;
  String currentRightBackgroundColor;

  @override
  void ngOnInit() {
    currentMiddleBackgroundColor = middleBackgroundColor;
    currentLeftBackgroundColor = leftBackgroundColor;
    currentRightBackgroundColor = rightBackgroundColor;
  }

  @HostListener('mouseenter')
  void onMouseEnter() {
    currentMiddleBackgroundColor = middleHoverBackgroundColor;
    currentLeftBackgroundColor = middleHoverBackgroundColor;
    currentRightBackgroundColor = middleHoverBackgroundColor;
  }

  @HostListener('mouseleave')
  void onMouseLeave() {
    currentMiddleBackgroundColor = middleBackgroundColor;
    currentLeftBackgroundColor = leftBackgroundColor;
    currentRightBackgroundColor = rightBackgroundColor;
  }

  String _textColor = '#ffffff';
}
