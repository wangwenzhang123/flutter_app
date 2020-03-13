import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum GridAction { action,loadData,openList }

class GridActionCreator {
  static Action onAction() {
    return const Action(GridAction.action);
  }
  static Action loadData(){
    return  Action(GridAction.loadData);
  }
  static Action openList(){
    return const Action(GridAction.openList);
  }
}
