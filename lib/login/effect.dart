

import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/widgets.dart' hide Action;
import 'package:flutter_app/login/action.dart';
import 'package:flutter_app/login/state.dart';

Effect<LoginState> buildEffect() {
  return combineEffects(<Object, Effect<LoginState>>{
    LoginAction.action: _onAction,
    LoginAction.openGrid: _onOpenGrid,
  });
}

void _onAction(Action action, Context<LoginState> ctx) {
}

//处理openGrid事件
void _onOpenGrid(Action action, Context<LoginState> ctx) {
  Navigator.of(ctx.context).pushNamed('grid_page', arguments: null);    //注意2
}
