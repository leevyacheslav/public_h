import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/pages/discover/discover_all_post_page.dart';
import 'package:hask/pages/discover/discover_root_page.dart';
import 'package:hask/pages/discover_post/discover_post_page.dart';
import 'package:logging/logging.dart';
import 'package:routemaster/routemaster.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  _setupLogging();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en', 'US'), Locale('ru', 'RU')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en', 'US'),
      startLocale: const Locale('en', 'US'),
      child: const MyApp(),
    ),
  );
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    // ignore: avoid_print
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

final routes = RouteMap(
  routes: {
    '/': (_) => const Redirect('/discover'),
    '/discover': (_) => const MaterialPage(child: DiscoverRootPage()),
    '/discover/post/:id': (info) => MaterialPage(
          child: DiscoverPostPage(
            postId: int.parse(info.pathParameters['id'] ?? ''),
          ),
        ),
    '/discover/category/:id/posts': (info) => MaterialPage(
          child: DiscoverAllPostsPage(
            categoryId: int.parse(info.pathParameters['id'] ?? ''),
            categoryName: info.queryParameters['category_name'] ?? '',
          ),
        ),
    '/discover/category/:id/posts/post/:post_id': (info) => MaterialPage(
          child: DiscoverPostPage(
            postId: int.parse(info.pathParameters['post_id'] ?? ''),
          ),
        ),
  },
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      routerDelegate: RoutemasterDelegate(routesBuilder: (_) => routes),
      routeInformationParser: const RoutemasterParser(),
    );
  }
}
