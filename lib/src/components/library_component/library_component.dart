import 'dart:async';

import 'package:angular/angular.dart';
import 'package:angular/security.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';

import '../../components/documents_component/documents_component.dart';
import '../../components/resource_component/resource_component.dart';
import '../../models/resource.dart';
import '../../models/video.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';
import '../../services/rise_service.dart';
import '../../services/video_service.dart';

@Component(
    directives: [
      MaterialAutoSuggestInputComponent,
      DocumentsComponent,
      NgFor,
      NgIf,
      ResourceComponent,
      routerDirectives,
      FoModalComponent
    ],
    selector: 'p-library',
    styleUrls: ['library_component.css'],
    templateUrl: 'library_component.html',
    pipes: [CapitalizePipe],
    changeDetection: ChangeDetectionStrategy.Default)
class LibraryComponent implements OnInit, OnDestroy {
  @Input()
  String backgroundImage;

  final SelectionModel searchModel = SelectionModel<SearchOption>.single();

  StringSelectionOptions<SearchOption> searchOptions;

  bool showModal = false;

  Router router;

  MessagesService msg;

  RiseService riseService;
  QuizService quizService;

  VideoService videoService;
  Video selectedModel;
  final DomSanitizationService sanitizer;
  List<Resource> resouces = [];
  StreamSubscription<List<SelectionChangeRecord>> _onSearchSubscription;
  String laymanReportLabel;
  String laymanReportLink;
  LibraryComponent(this.router, this.msg, this.riseService, this.quizService,
      this.videoService, this.sanitizer) {
    riseService.data.values.forEach(resouces.add);
    quizService.data.values.forEach(resouces.add);
    videoService.data.values.forEach(resouces.add);

    // TODO: call whenever the language is changed

    _initSearchOptions();

    _onSearchSubscription =
        searchModel.selectionChanges.listen(_onSearchChange);
  }
  @override
  void ngOnDestroy() {
    _onSearchSubscription?.cancel();
  }

  @override
  void ngOnInit() {
    final lang =
        Uri.base.pathSegments.isEmpty ? 'sv' : Uri.base.pathSegments.first;
    switch (lang) {
      case 'de':
        laymanReportLabel = 'Das Ergebnis des Projekts (EN)';
        laymanReportLink =
            'https://www.praktikertjanst.se/globalassets/00.-praktikertjanst-koncernwebb/00.-bilder/life/nyheter/laymansreport-en-webb.pdf';
        break;
      case 'en':
        laymanReportLabel = "The project's results";
        laymanReportLink =
            'https://www.praktikertjanst.se/globalassets/00.-praktikertjanst-koncernwebb/00.-bilder/life/nyheter/laymansreport-en-webb.pdf';
        break;
      case 'es':
        laymanReportLabel = 'El resultado del proyecto (EN)';
        laymanReportLink =
            'https://www.praktikertjanst.se/globalassets/00.-praktikertjanst-koncernwebb/00.-bilder/life/nyheter/laymansreport-en-webb.pdf';
        break;
      case 'fr':
        laymanReportLabel = 'Le résultat du projet (EN)';
        laymanReportLink =
            'https://www.praktikertjanst.se/globalassets/00.-praktikertjanst-koncernwebb/00.-bilder/life/nyheter/laymansreport-en-webb.pdf';
        break;

      case 'sv':
        laymanReportLabel = 'Projektrapport';
        laymanReportLink =
            'https://www.praktikertjanst.se/globalassets/00.-praktikertjanst-koncernwebb/00.-bilder/life/nyheter/laymansreport-sv-webb.pdf';
        break;

      default:
        laymanReportLabel = "The project's results";
        laymanReportLink =
            'https://www.praktikertjanst.se/globalassets/00.-praktikertjanst-koncernwebb/00.-bilder/life/nyheter/laymansreport-en-webb.pdf';
        break;
    }
  }

  void onVideoClick(Video model) {
    selectedModel = model;
    model.complete = true;
  }

  void _initSearchOptions() {
    final optionGroups = <OptionGroup<SearchOption>>[
      OptionGroup.withLabel(
          resouces
              .map((action) => SearchOption()
                ..url = action.phrases[msg.currentLanguage].url
                ..label = action.phrases[msg.currentLanguage].name)
              .toList(growable: false),
          msg.course_modules)
    ];

    searchOptions =
        StringSelectionOptions<SearchOption>.withOptionGroups(optionGroups);
  }

  void _onSearchChange(List<SelectionChangeRecord> changes) {
    if (changes.isNotEmpty && changes.first.added.isNotEmpty) {
      final SearchOption model = changes.first.added.first;

      if (model.url != null && model.url.isNotEmpty) {
        try {
          selectedModel = videoService.data.values.firstWhere((resource) =>
              resource.phrases[msg.currentLanguage].url == model.url);
        } on StateError catch (e) {
          print(e);
          print('hej library');
        }
        if (selectedModel != null) {
          selectedModel.complete = true;
          showModal = true;
        } else {
          router.navigate(
              '${msg.currentLanguage}/${msg.home_url}/${msg.library_url}/${model.url}');
        }
      }
    }
  }
}

class SearchOption {
  String url;
  String label;

  @override
  String toString() => label;
}
