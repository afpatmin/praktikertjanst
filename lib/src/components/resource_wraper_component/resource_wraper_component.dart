import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import '../../components/quiz_component/quiz_component.dart';
import '../../components/rise_component/rise_component.dart';
import '../../models/quiz.dart';
import '../../models/resource.dart';
import '../../models/rise.dart';
import '../../services/messages_service.dart';

import '../../services/quiz_service.dart';
import '../../services/rise_service.dart';

@Component(
    directives: [RiseComponent, QuizComponent, NgIf],
    providers: [],
    selector: 'p-resource-wrapper',
    styleUrls: ['resource_wraper_component.css'],
    templateUrl: 'resource_wraper_component.html')
class ResourceWrapperComponent implements OnActivate {
  ResourceWrapperComponent(this.riseService, this.quizService, this.msg);
  @override
  void onActivate(RouterState previous, RouterState current) async {
    final resourceUrl = current.parameters['url'];
    try {
      riseModel = riseService.data.values.firstWhere((resource) =>
          resource.phrases[msg.currentLanguage].url == resourceUrl);
    } on StateError catch (e) {
      print(e);
      riseService.data.forEach(
          (index, value) => print(value.phrases[msg.currentLanguage].url));
      print(resourceUrl);
    }

    try {
      quizModel = quizService.data.values.firstWhere((resource) =>
          resource.phrases[msg.currentLanguage].url == resourceUrl);
    } on StateError catch (e) {
      print(e);
      quizService.data.forEach(
          (index, value) => print(value.phrases[msg.currentLanguage].url));
      print(resourceUrl);
    }
  }

  Resource model;
  RiseService riseService;
  QuizService quizService;
  MessagesService msg;
  Rise riseModel;
  Quiz quizModel;
}
