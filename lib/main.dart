import 'package:flutter/material.dart';
import 'package:its_all_widgets/automatic_sliding_ui.dart';
import 'package:its_all_widgets/draggable_scrollable_sheet.dart';
import 'package:its_all_widgets/toggle_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: MyPageView(),
      // home: MyDraggableScrollableSheet(),
      home: SlidingUi(),
    );
  }
}
