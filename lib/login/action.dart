import 'package:fish_redux/fish_redux.dart';

//TODO replace with your own action
enum LoginAction { action ,openGrid}

class LoginActionCreator {
  static Action onAction() {
    return const Action(LoginAction.action);
  }
  static Action onOpenGrid(){
    return const Action(LoginAction.openGrid);
  }
}
