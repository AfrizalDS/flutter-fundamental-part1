import 'package:belanja/pages/home_page.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:go_router/go_router.dart';
import 'package:belanja/models/item.dart';

class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => HomePage(),
        routes: [
          GoRoute(
            path: 'item',
            builder: (context, state) {
              final item = state.extra as Item;
              return ItemPage(item: item);
            },
          ),
        ],
      ),
    ],
  );
}
