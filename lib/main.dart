import 'package:flutter/material.dart';

import 'package:test_widgets/my_timezone.dart';
import 'package:test_widgets/my_notification.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureLocalTimeZone();
  await initMyNotification();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test_widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyNotification(title: 'test_widgets'),
    );
  }
}
