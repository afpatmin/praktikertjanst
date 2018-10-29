import 'dart:html';
import 'package:angular_components/material_icon/material_icon.dart';
import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:fo_components/fo_components.dart';
import '../../models/resource.dart';
import '../../services/course_room_service.dart';
import '../../services/messages_service.dart';

@Component(
    directives: const [routerDirectives, NgFor, NgIf, MaterialIconComponent],
    providers: const [],
    pipes: [NamePipe],
    selector: 'p-breadcrumbs',
    styleUrls: const ['breadcrumbs_component.css'],
    templateUrl: 'breadcrumbs_component.html')
class BreadcrumbsComponent {
  BreadcrumbsComponent(
      this._router, this.msg, this.location, this.courseRoomService) {
    _router.onRouteActivated.listen(_onNavigationStart);
  }

  void _onNavigationStart(RouterState state) {
    routerState = state;
    final segments = pathSegments;

    crumbLinks = new List(segments.length);

    for (var i = 0; i < segments.length; i++) {
      final s = segments.take(i + 1);
      crumbLinks[i] = s.join('/');
    }
  }

  List<String> get pathSegments =>
      routerState == null ? [] : routerState.path.split('/');

  List<String> evaluateBreadcrumbs(List<String> path) {
    var breadcrumbs = path;
    if (window.innerWidth < maxScreenWidth &&
        breadcrumbs.join('').length > nrOfCharacters) {
      breadcrumbs[(breadcrumbs.indexWhere((part) => part != '..'))] = '..';
      breadcrumbs = evaluateBreadcrumbs(breadcrumbs);
    }
    return breadcrumbs.map((c) => c.replaceAll('-', ' ')).toList();
  }

  void back() {
    _router.navigate(crumbLinks[crumbLinks.length - 2]);
  }

  bool home() {
    var home = false;
    if (crumbLinks.length == 2) home = true;
    return home;
  }

  bool isCourseRoom() {    
    try {
      if (pathSegments.last != null) {
        resourceUrl = pathSegments.last;
      }
      model = courseRoomService.data[resourceUrl];

    } on StateError {
      print('resourse not found');
    }

    return model != null;
  }

  final Router _router;
  final MessagesService msg;
  final int nrOfCharacters = 30;
  final int maxScreenWidth = 400;
  List<String> crumbLinks = [];
  RouterState routerState;
  Location location;
  Resource model;
  CourseRoomService courseRoomService;
  String resourceUrl;
}
