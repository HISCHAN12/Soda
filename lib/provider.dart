import 'package:aaaa/model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:aaaa/item_list_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider{
      create: (context) => ItemNotifier(),
      child: MyApp(),
    },
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ItemListScreen(),
    );
  }
}
//new name error?