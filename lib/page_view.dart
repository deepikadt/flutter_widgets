import 'package:flutter/material.dart';

class MyPageView extends StatefulWidget {
  MyPageView({Key key}) : super(key: key);

  _MyPageViewState createState() => _MyPageViewState();
}

class _MyPageViewState extends State<MyPageView> {
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

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
          child: _pageViewWidget(),
        ));
  }

  Widget _pageViewWidget() {
    return PageView(
      controller: _pageController,
      children: [
        Container(
          color: Colors.blue,
          child: Card(
            color: Colors.deepOrangeAccent,
            margin: const EdgeInsets.all(30),
            child: Center(
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {
                  if (_pageController.hasClients) {
                    _pageController.animateToPage(
                      1,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text('Next'),
              ),
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          child: Card(
            color: Colors.deepOrangeAccent,
            margin: const EdgeInsets.all(30),
            child: Center(
              child: RaisedButton(
                color: Colors.white,
                onPressed: () {
                  if (_pageController.hasClients) {
                    _pageController.animateToPage(
                      0,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeInOut,
                    );
                  }
                },
                child: Text('Previous'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
