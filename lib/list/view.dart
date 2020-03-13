import 'package:fish_redux/fish_redux.dart';

import 'package:flutter/material.dart';

import 'action.dart';

import 'state.dart';

Widget buildView(ListState state, Dispatch dispatch, ViewService viewService) {
  ListAdapter listAdapter=viewService.buildAdapter();
  return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.blue,
      title: Text("列表界面"),
    ),
    body: Container(
      child: ListView.builder(
        itemBuilder: listAdapter.itemBuilder,
        itemCount: listAdapter.itemCount,
      ),
    ),
  );
}
