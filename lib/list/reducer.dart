import 'package:fish_redux/fish_redux.dart';

import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Reducer<ListState> buildReducer() {
  return asReducer(
    <Object, Reducer<ListState>>{
      ListAction.action: _onAction,
      ListAction.initData: _initData,
    },
  );
}

ListState _onAction(ListState state, Action action) {
  final ListState newState = state.clone();
  return newState;
}
ListState _initData(ListState state, Action action){
  final List<ItemState> list=action.payload ?? <ItemState>[];
  final ListState newState = state.clone();
  newState.items=list;
  return newState;
}
