import 'package:fish_redux/fish_redux.dart';

import 'effect.dart';
import 'reducer.dart';
import 'state.dart';
import 'view.dart';

class FishTestPage extends Page<FishTestState, Map<String, dynamic>> {
  FishTestPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<FishTestState>(
                adapter: null,
                slots: <String, Dependent<FishTestState>>{
                }),
            middleware: <Middleware<FishTestState>>[
            ],);

}
