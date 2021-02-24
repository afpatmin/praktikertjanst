import 'dart:html';

import 'package:angular/angular.dart';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';

import '../../models/resource.dart';
import '../../services/course_room_service.dart';
import '../../services/messages_service.dart';
import '../../services/quiz_service.dart';
import '../../services/rise_service.dart';
import '../../services/video_service.dart';

@Component(
    directives: [routerDirectives, NgFor, NgIf, MaterialIconComponent],
    providers: [],
    pipes: [CapitalizePipe],
    selector: 'p-breadcrumbs',
    styleUrls: ['breadcrumbs_component.css'],
    templateUrl: 'breadcrumbs_component.html')
class BreadcrumbsComponent {
  final Router _router;
  final MessagesService msg;
  final int nrOfCharacters = 33;
  final int maxScreenWidth = 400;
  List<String> crumbLinks = [];
  RouterState routerState;

  CourseRoomService courseRoomService;
  RiseService riseService;
  VideoService videoService;
  QuizService quizService;
  Map<String, Resource> resources = {};
  List<String> breadcrumbList = [];
  List<String> resourceNameList = [];

  BreadcrumbsComponent(this._router, this.msg, this.courseRoomService,
      this.riseService, this.quizService, this.videoService) {
    resources
      ..addAll(quizService.data)
      ..addAll(courseRoomService.data)
      ..addAll(riseService.data)
      ..addAll(videoService.data);
    _router.onRouteActivated.listen(_onNavigationStart);
  }

  List<String> get pathSegments {
    if (routerState == null) {
      return [];
    } else {
      var segments = routerState.path.split('/');
      if (segments.length > 2) {
        segments = segments.sublist(2);
      }
      return segments;
    }
  }

  bool get showCloseButton {
    if (crumbLinks.length == 1) return false;
    final segments = pathSegments.toList();
    if (segments.isEmpty ||
        segments.last == msg.library_url ||
        segments.last == msg.contact) return false;

    final courseRoom = courseRoomService.data[segments.last];
    return courseRoom == null;
  }

  void back() {
    _router.navigate(
        '${msg.currentLanguage}/${crumbLinks[crumbLinks.length - 2]}');
  }

  List<String> evaluateBreadcrumbs(List<String> path) {
    var breadcrumbs = path.toList();
    if (window.innerWidth < maxScreenWidth &&
        breadcrumbs.join('').length > nrOfCharacters) {
      breadcrumbs[(breadcrumbs.indexWhere((part) => part != '..'))] = '..';
      breadcrumbs = evaluateBreadcrumbs(breadcrumbs);
    }
    return breadcrumbs.map((c) => c.replaceAll('-', ' ')).toList();
  }

  List<String> evaluateResourceNameList(List<String> path) {
    final nameList = <String>[];

    for (var p in path) {
      if (p == msg.library_url) {
        nameList.add(
            '${msg.library_url[0].toUpperCase()}${msg.library_url.substring(1)}');
      }

      if (p == msg.contact)
        nameList
            .add('${msg.contact[0].toUpperCase()}${msg.contact.substring(1)}');
      if (p == msg.home_url)
        nameList.add(
            '${msg.home_url[0].toUpperCase()}${msg.home_url.substring(1)}');
      else {
        try {
          nameList.add(resources.values
              .firstWhere(
                  (resource) => resource.phrases[msg.currentLanguage].url == p)
              ?.phrases[msg.currentLanguage]
              .name);
        } on StateError catch (e) {
          print(e);
        }
      }
    }
    return evaluateBreadcrumbs(nameList);
  }

  void _onNavigationStart(RouterState state) {
    routerState = state;
    final segments = pathSegments.toList();

    crumbLinks = List.filled(segments.length, null);

    for (var i = 0; i < segments.length; i++) {
      final s = segments.take(i + 1);
      crumbLinks[i] = s.join('/');
    }
    resourceNameList = evaluateResourceNameList(pathSegments);
    breadcrumbList = evaluateBreadcrumbs(pathSegments);
  }
}
