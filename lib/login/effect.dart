import 'package:fish_redux/fish_redux.dart';
import 'package:flutter_app/login/action.dart';
import 'package:flutter_app/login/state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.action: _onAction,
  });
}

void _onAction(Action action, Context<LoginState> ctx) {
}
