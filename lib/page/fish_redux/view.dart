import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import 'action.dart';
import 'state.dart';

Widget buildView(FishTestState state, Dispatch dispatch, ViewService viewService) {
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
