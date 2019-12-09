import 'dart:async';

import 'package:flutter/material.dart';

class SlidingUi extends StatefulWidget {
  @override
  _SlidingUiState createState() => _SlidingUiState();
}

class _SlidingUiState extends State<SlidingUi> {
  bool _selected = false;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();

    Timer.periodic(Duration(seconds: 5), (_) {
      _pageController.nextPage(
          duration: Duration(seconds: 5), curve: Curves.linear);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0,
      ),
      body: _slidingUi(),
    );
  }

  Widget _slidingUi() {
    return Column(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height * .6,
          width: MediaQuery.of(context).size.width,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            controller: _pageController,
            itemCount: null,
            pageSnapping: false,
            itemBuilder: ((context, pos) {
              return (pos % 2 == 0) ? _scrollScreenOne() : _scrollScreenTwo();
            }),
          ),
        ),
        Expanded(
          child: _buttons(),
        ),
      ],
    );
  }

  Widget _scrollScreenOne() {
    return Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          left: .5,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: .5,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 90),
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: .5,
          bottom: .5,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 20.0, left: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: .5,
          bottom: .5,
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0, bottom: 40.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 65,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: .5,
          bottom: .5,
          child: Padding(
            padding: const EdgeInsets.only(left: 80.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 80,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: .5,
          bottom: .5,
          right: .5,
          child: Padding(
            padding: const EdgeInsets.only(right: 30, bottom: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _scrollScreenTwo() {
    return Stack(
      children: <Widget>[
        Container(
          // color: Colors.blue,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Positioned(
          left: .5,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: .5,
          top: 0,
          child: Padding(
            padding: const EdgeInsets.only(right: 50),
            child: CircleAvatar(
              radius: 50,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 70,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: .5,
          bottom: .5,
          child: Padding(
            padding: const EdgeInsets.only(left: 50.0, bottom: 20.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 60,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          right: .5,
          bottom: .5,
          child: Padding(
            padding: const EdgeInsets.only(right: 30.0, bottom: 40.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 55,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: .5,
          bottom: .5,
          child: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: .5,
          bottom: .5,
          right: .5,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: .5,
          left: .5,
          right: .5,
          child: Padding(
            padding: const EdgeInsets.only(top: 60.0),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              radius: 40,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  child: Text(
                    "Relationship Thing",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
        // Positioned(
        //   top: .5,
        //   left: .5,
        //   right: .5,
        //   child: Padding(
        //     padding: const EdgeInsets.only(top: 60.0),
        //     child: CircleAvatar(
        //       backgroundColor: Colors.white,
        //       radius: 40,
        //       child: Padding(
        //         padding: const EdgeInsets.all(12.0),
        //         child: SizedBox(
        //           child: Text(
        //             "Relationship Thing",
        //             style: TextStyle(color: Colors.black, fontSize: 12),
        //             textAlign: TextAlign.center,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );
  }

  Widget _buttons() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 50.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Align(
            child: Text(
              "Want to talk to someone?",
            ),
            alignment: Alignment.center,
          ),
          SizedBox(
            height: 20.0,
          ),
          RaisedButton(
            color: Colors.white,
            child: Text("Yes its much needed"),
            onPressed: () {},
          ),
          SizedBox(
            height: 20.0,
          ),
          OutlineButton(
            color: Colors.white,
            child: Text("Not Now"),
            onPressed: () {},
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
