import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:wled/core/core.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _appRouter = getIt<AppRouter>();

    return MaterialApp.router(
      title: 'WLED',
      theme: AppTheme.theme,
      darkTheme: AppTheme.theme,
      debugShowCheckedModeBanner: false,
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        Localization.delegate,
      ],
      supportedLocales: Localization.delegate.supportedLocales,
    );
  }
}
