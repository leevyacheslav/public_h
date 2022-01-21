import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hask/helpers/app_theme.dart';
import 'package:hask/pages/discover/discover_page.dart';
import 'package:hask/pages/discover/discover_root_page.dart';
import 'package:hask/pages/discover_detail/discover_post_page.dart';

import 'package:hask/pages/login/main_login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

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

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: const DiscoverRootPage(),
    );
  }
}
