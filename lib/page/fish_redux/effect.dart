import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<FishTestState> buildEffect() {
  return combineEffects(<Object, Effect<FishTestState>>{
    FishTestAction.action: _onAction,
  });
}

void _onAction(Action action, Context<FishTestState> ctx) {
}
