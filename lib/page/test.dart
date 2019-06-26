import 'package:fish_redux_issue/generated/i18n.dart';
import 'package:flutter/material.dart';

import '../main.dart';

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: sBank.test,
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(sBank.test),
        ),
        body: new Center(
          child: FlatButton(onPressed: (){
            if(flag){
              localeChange(Locale("en", ""));
            }
            else{
              localeChange(Locale("zh", ""));
            }
            flag = !flag;
          }, child: Text('切换语言'+ sBank.test)),
        ),
      ),
    );
  }
}