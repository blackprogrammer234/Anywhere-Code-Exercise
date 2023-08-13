import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';

import '../pages/home/home_page.dart';
part 'navigation_route_generator.gr.dart';

@AutoRouterConfig()
class NavigationRouteGenerator extends _$NavigationRouteGenerator {
  @override
  List<AutoRoute> get routes => [AutoRoute(path: '/', page: HomeRoute.page)];
}
