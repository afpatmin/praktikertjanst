import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:d_components/d_components.dart';
import 'package:angular_components/model/menu/menu.dart';
import 'package:fo_components/fo_components.dart';
import 'package:intl/intl.dart';
import 'src/components/carousel_component/carousel_component.dart';
import 'src/components/footer_component/footer_component.dart';
import 'src/components/fullscreen_component/fullscreen_component.dart';
import 'src/components/good_exampels_component/good_examples_component.dart';
import 'src/components/learning_content_component/learning_content_component.dart';
import 'src/components/main_header_component/main_header_component.dart';
import 'src/components/make_a_difference_component/make_adifference_component.dart';
import 'src/components/quick_action_component/quick_action_component.dart';
import 'src/components/rise_component/rise_component.dart';
import 'src/models/learning_content.dart';
import 'src/models/quick_action.dart';
import 'src/models/rise.dart';
import 'src/services/learning_content_service.dart';
import 'src/services/quick_action_service.dart';
import 'src/services/rise_service.dart';

@Component(
    selector: 'p-app',
    templateUrl: 'app_component.html',
    styleUrls: const [
      'app_component.css'
    ],
    directives: [ 
      NavbarComponent,
      FooterComponent,
      FullscreenComponent,
      GoodExamplesComponent,
      MaterialMenuComponent,
      MaterialIconComponent,
      CarouselComponent,
      LearningContentComponent,
      MainHeaderComponent,
      MakeaADifferenceComponent,
      QuickActionComponent,
      RiseComponent,
      NgFor,
      NgIf

    ],
    providers: [
      materialProviders,
      LearningContentService,
      QuckActionService,
      RiseService
    ],
    pipes: [
      NamePipe
    ])
class AppComponent implements OnInit {
  AppComponent(this._learningContentService, this._actionContentService, this._riseService);

  @override
  void ngOnInit() async {
    learningContents = await _learningContentService.getAll();
    quickActions = await _actionContentService.getAll();
    riseContents = await _riseService.getAll();
    link = Intl.message('link', name: 'link');
    link1 = Intl.message('link1', name: 'link1');
    link2 = Intl.message('link2', name: 'link2');
    link3 = Intl.message('link3', name: 'link3');

  }

  String companyName([int howMany = 1]) => Intl.plural(howMany,
      one: 'praktikertjänst',
      other: 'praktikertjänst',
      desc: 'name of the company');

  final MenuModel menuModel = MenuModel<MenuItem>([
    MenuItemGroup<MenuItem>([
      MenuItem(Intl.message('Overview', name: 'overview')),
      MenuItem(Intl.message('Installation', name: 'installation')),
      MenuItem(Intl.message('Management', name: 'management')),
      MenuItem(Intl.message('Decommissioning', name: 'decommissioning')),
    ])
  ]);
  final LearningContentService _learningContentService;
  final RiseService _riseService;
  final QuckActionService _actionContentService;
  List<LearningContent> learningContents = [];
  List<QuickAction> quickActions = [];
  List<Rise> riseContents = [];
  String link;
  String link1;
  String link2;
  String link3;
}
