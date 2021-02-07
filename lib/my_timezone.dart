import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:test_widgets/my_vars.dart';

const MethodChannel platform = MethodChannel('priki/my_notification');

Future<void> configureLocalTimeZone() async {
  tz.initializeTimeZones();
  MyVars myVars = MyVars.instance;
  myVars.timeZoneName = await platform.invokeMethod('getTimeZoneName');
  // debugPrint('${myVars.timeZoneName}');
  tz.setLocalLocation(tz.getLocation(myVars.timeZoneName));
}

