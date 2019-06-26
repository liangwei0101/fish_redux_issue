import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum FishTestAction { action }

class FishTestActionCreator {
  static Action onAction() {
    return const Action(FishTestAction.action);
  }
}
