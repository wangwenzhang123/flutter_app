import 'package:fish_redux/fish_redux.dart';

import 'package:flutter_app/login/effect.dart';
import 'package:flutter_app/login/reducer.dart';
import 'package:flutter_app/login/state.dart';
import 'package:flutter_app/login/view.dart';

class LoginPage extends Page<LoginState, Map<String, dynamic>> {
  LoginPage()
      : super(
            initState: initState,
            effect: buildEffect(),
            reducer: buildReducer(),
            view: buildView,
            dependencies: Dependencies<LoginState>(
                adapter: null,
                slots: <String, Dependent<LoginState>>{
                }),
            middleware: <Middleware<LoginState>>[
            ],);

}
