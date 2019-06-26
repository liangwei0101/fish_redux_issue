import 'package:fish_redux/fish_redux.dart';

class FishTestState implements Cloneable<FishTestState> {

  @override
  FishTestState clone() {
    return FishTestState();
  }
}

FishTestState initState(Map<String, dynamic> args) {
  return FishTestState();
}
