import 'package:flutter/material.dart';

class MyToggleButton extends StatefulWidget {
  @override
  _MyToggleButtonState createState() => _MyToggleButtonState();
}

class _MyToggleButtonState extends State<MyToggleButton> {
  List<bool> _selection = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 0,
          title: Text("Page Controller"),
        ),
        body: Container(
          child: _toggleButtonScreen(),
        ));
  }

  Widget _toggleButtonScreen() {
    return Center(
      child: ToggleButtons(
        children: <Widget>[
          Icon(Icons.star),
          Icon(Icons.home),
        ],
        fillColor: Colors.purpleAccent,
        color: Colors.orangeAccent,
        selectedColor: Colors.deepPurpleAccent,
        // renderBorder: false,
        borderRadius: BorderRadius.circular(30),
        borderWidth: 1,
        borderColor: Colors.deepOrange,
        selectedBorderColor: Colors.deepPurple,

        // onPressed: null,
        // disabledBorderColor: Colors.blueGrey,
        // disabledColor: Colors.grey,
        // splashColor: Colors.greenAccent,
        // highlightColor: Colors.yellowAccent,
        isSelected: _selection,
        onPressed: (int index) {
          setState(() {
            _selection[index] = !_selection[index];
          });
        },
      ),
    );
  }
}
