import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    const MaterialApp(
      /*
      localizationsDelegates: [
        GlobalWidgetsLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
       */
      localizationsDelegates: L10n.localizationsDelegates,
      /*
      supportedLocales: [
        Locale('ja', 'JP'),
      ],
       */
      supportedLocales: L10n.supportedLocales,
      home: HomeScreen(),
    )
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // デフォルトロケールの設定
    Intl.defaultLocale = Localizations.localeOf(context).toString();
    final l10n = L10n.of(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextField(),
            Text(
              DateFormat.yMEd().format(DateTime.now()),
            ),
            Text(l10n.helloWorld),
            Text(l10n.numOfSearchResult(0)),
            Text(l10n.numOfSearchResult(1)),
            Text(l10n.numOfSearchResult(2)),
          ],
        ),
      ),
    );
  }
}