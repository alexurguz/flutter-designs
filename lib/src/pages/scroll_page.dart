import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pageOne(),
          _pageTwo(context)
        ],
      )
    );
  }

  Widget _pageOne() {
    return Stack(//Stack is used by put elements up to the other element
      children: <Widget>[
        _backgroundColor(),
        _backgroundImage(),
        _text(),
      ],
    );
  }


  Widget _backgroundColor() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
    );

  }

  Widget _backgroundImage() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/img/scroll-1.png'),
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _text() {

    final styleText = TextStyle(color: Colors.white, fontSize: 50.0);

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0 ),
          Text('11°', style: styleText ),
          Text('Sunday', style: styleText ),
          SizedBox(height: 40.0 ),
          Text('Scroll design example', style: styleText, textAlign: TextAlign.center,),
          Expanded( child: Container() ),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white )
        ],
      ),
    );

  }

  Widget _pageTwo(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Color.fromRGBO(108, 192, 218, 1.0),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Welcome', style: TextStyle(fontSize: 20.0)),
          ),
          onPressed: ()=> {},
        ),
      ),
    );
  }


}