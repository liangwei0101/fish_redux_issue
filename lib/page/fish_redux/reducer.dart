import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'state.dart';

Reducer<FishTestState> buildReducer() {
  return asReducer(
    <Object, Reducer<FishTestState>>{
      FishTestAction.action: _onAction,
    },
  );
}

FishTestState _onAction(FishTestState state, Action action) {
  final FishTestState newState = state.clone();
  return newState;
}
