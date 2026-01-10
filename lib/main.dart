import 'package:avatar_filter/app/app_provider.dart';
import 'package:avatar_filter/router/app_router.dart';
import 'package:avatar_filter/theme/base_theme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/lang',
      fallbackLocale: const Locale('en'),
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();
  final _router = router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      scaffoldMessengerKey: _scaffoldMessengerKey,
      title: 'Avatar Filter',
      routerConfig: _router,
      themeMode: ThemeMode.light,
      theme: baseLightTheme,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      builder: (context, child) => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling),
        child: AppProvider(child: child ?? const SizedBox()),
      ),
    );
  }
}
