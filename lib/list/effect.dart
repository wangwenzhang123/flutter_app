import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'item/state.dart';
import 'state.dart';

Effect<ListState> buildEffect() {
  return combineEffects(<Object, Effect<ListState>>{
    ListAction.action: _onAction,
    Lifecycle.initState: _initData,
  });
}

void _onAction(Action action, Context<ListState> ctx) {
}
void _initData(Action action, Context<ListState> ctx){
  List<ItemState> list=[
    ItemState(type: 0,title: "我是标题1",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 0,title: "我是标题2",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 0,title: "我是标题3",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 0,title: "我是标题4",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 0,title: "我是标题5",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 0,title: "我是标题6",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 0,title: "我是标题7",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 1,title: "我是标题8",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 0,title: "我是标题9",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 1,title: "我是标题10",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),
    ItemState(type: 0,title: "我是标题11",content: "asdsadasaaaaaaaaaaaaaaaaaaaaaaaa问问为趣味无穷"),

  ];
  ctx.dispatch(ListActionCreator.initData(list));
}
