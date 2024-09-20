import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool _isVisible = false;
  bool _isTop = false;
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white70,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            AnimatedOpacity(
              opacity: _isVisible ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 1500),
                width: 250,
                height: 250,
                color: Colors.blue,
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    _isVisible = !_isVisible;
                  });
                },
                child: Text("Click here")),
        
        AnimatedAlign(
          alignment: _isTop ? Alignment.topCenter : Alignment.bottomCenter,
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
          child: Container(width: 50, height: 50, color: Colors.green),
        ),
            TextButton(
                onPressed: () {
                  setState(() {
                    _isTop = !_isTop;
                  });
                },
                child: Text("Click here")),
        
        
          AnimatedContainer(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: _isExpanded ? 300 : 100,
            height: _isExpanded ? 300 : 100,
        
            margin: EdgeInsets.all(_isExpanded ? 20.0 : 5.0),
            decoration: BoxDecoration(
              color: _isExpanded ? Colors.orange : Colors.blue,
              borderRadius: BorderRadius.circular(_isExpanded ? 30.0 : 0.0),
            ),
          ),
        
            TextButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                child: Text("Click here")),
        ],
        ),
      ),
    );
  }
}
