import 'package:flutter/material.dart';

class MyNotification extends StatefulWidget {
  MyNotification({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyNotificationState createState() => _MyNotificationState();
}

class _MyNotificationState extends State<MyNotification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 16.0,
            ),
            FlatButton(
              child: Text(
                'Test 1',
                style: TextStyle(fontSize: 16.0),
              ),
              onPressed: () {
                debugPrint('${DateTime.now()} - Test 1');
              },
              color: Colors.amber,
              highlightColor: Colors.amberAccent,
              splashColor: Colors.cyanAccent,
              textColor: Colors.black87,
              padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
            ),
          ],
        ),
      ),
    );
  }
}
