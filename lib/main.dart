import 'package:fish_redux_issue/page/fish_redux/page.dart';
import 'package:fish_redux_issue/page/test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/i18n.dart';

void main() => runApp(MyApp());

bool flag = true;
S sBank;

ValueChanged<Locale> localeChange;
class MyApp extends StatefulWidget {

  @override
  MyAppState createState() =>MyAppState();
}

class MyAppState extends State<MyApp>{

  Locale _locale = const Locale("zh", "");

  @override
  void initState() {
    super.initState();
    localeChange = (locale) {
      setState(() {
        _locale = locale;
        print(locale);
      });
    };
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Builder(builder: (context) {
        sBank = S.of(context);
        return Localizations.override(
          context: context,
          locale: _locale,
          child: Test(),  // 这是可以的
//        child: FishTestPage().buildPage(null),  // 这是不可以的
        );
      }),
      locale: _locale,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: S.delegate.supportedLocales,
    );
  }

}
