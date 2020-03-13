import 'package:fish_redux/fish_redux.dart';

import 'item/state.dart';

//TODO replace with your own action
enum ListAction { action ,initData}

class ListActionCreator {
  static Action onAction() {
    return const Action(ListAction.action);
  }
  static Action initData(List<ItemState> items){
    return Action(ListAction.initData,payload: items);
  }
}
