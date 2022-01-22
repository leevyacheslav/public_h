import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/pages/discover/discover_all_post_page.dart';
import 'package:hask/pages/discover/discover_page.dart';
import 'package:hask/pages/discover/discover_root_page.dart';
import 'package:hask/pages/discover/discover_search_page.dart';
import 'package:hask/pages/discover_detail/discover_post_page.dart';

import 'package:hask/pages/login/main_login_page.dart';
import 'package:logging/logging.dart';

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
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const DiscoverPage(),
    );
  }
}
