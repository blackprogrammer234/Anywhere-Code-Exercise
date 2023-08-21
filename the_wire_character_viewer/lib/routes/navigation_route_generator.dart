import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:the_wire_character_viewer/bloc/the_wire_character_viewer_bloc.dart';
import 'package:the_wire_character_viewer/pages/detail_view/detail_page.dart';

import '../pages/home/home_page.dart';
part 'navigation_route_generator.gr.dart';

@AutoRouterConfig()
class NavigationRouteGenerator extends _$NavigationRouteGenerator {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: HomeRoute.page),
        AutoRoute(path: '/Detail_Character_page', page: DetailRoute.page)
      ];
}
