import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:injectable/injectable.dart';
import 'package:wled_app/core/core.dart';
import 'package:wled_app/core/l10n/generated/l10n.dart';

import 'app_router.gr.dart';
import 'app_theme.dart';

@singleton
final _appRouter = AppRouter();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
