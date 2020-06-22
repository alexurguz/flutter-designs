import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {

  final styleTitle =  TextStyle( fontSize: 18.0, fontWeight: FontWeight.bold );
  final styleSubtitle =  TextStyle( fontSize: 16.0, color: Colors.grey );

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _createImage(),
            _createTitle(),
            _createActions(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
            _createText(),
          ],
        ),
      )
    );
  }

  Widget _createImage(){
    return Container(
      width: double.infinity,
      child: Image(
        image: AssetImage('assets/img/landscape.jpeg'),
        fit: BoxFit.cover,
      )
    );
  }

  Widget _createTitle(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0, vertical: 20.0 ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Columna 1', style: styleTitle ),
                  SizedBox( height: 7.0, ),
                  Text('Columna 2', style: styleSubtitle ),
                ]
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text('41', style: TextStyle( fontSize: 20.0 ) ),

          ],
        ),
      ),
    );
  }

  Widget _createActions(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
            _paintButton( Icons.call, 'CALL'),
            _paintButton( Icons.near_me, 'ROUTE'),
            _paintButton( Icons.share, 'SHARE'),
        ],
      );
  }

  Widget _paintButton(IconData icon, String textIcon ){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 30.0 ),
        Text( textIcon, style: TextStyle( fontSize: 10.0, color: Colors.blue ) ),
      ]
    );
  }

  Widget _createText(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0, vertical: 20.0 ),
        child: Text('Lorem ipsum dolor sit amet consectetur adipiscing elit, mi parturient pharetra vestibulum consequat faucibus at, ridiculus taciti nam augue proin sociis. Sollicitudin iaculis blandit tempus orci magnis suspendisse ac justo lacus, aptent purus vitae mollis nascetur penatibus dui elementum congue nisl, rutrum leo fames duis euismod luctus molestie varius. Quis molestie placerat sem nisl leo at vulputate, vivamus elementum etiam imperdiet sed netus felis, eu nullam sodales et blandit nibh.',
            textAlign: TextAlign.justify
          ),
      ),
    );
  }
}
