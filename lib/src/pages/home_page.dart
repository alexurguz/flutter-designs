import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('App designs'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Welcome to designs app',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings_cell),
              title: Text('Basic'),
              onTap: ()=> Navigator.pushNamed(context, 'basic'),
            ),
            ListTile(
              leading: Icon(Icons.list),
              title: Text('Scroll'),
              onTap: ()=> Navigator.pushNamed(context, 'scroll'),
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Buttons'),
              onTap: ()=> Navigator.pushNamed(context, 'button'),
            ),
          ],
        ),
      ),
    );
  }
}