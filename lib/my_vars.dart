import 'package:timezone/timezone.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

// How to use
// MyVars myVars = MyVars.instance;
// debugPrint('${myVars.currentTZ()}');
// myVars.printLocations();

class MyVars {
  MyVars._privateConstructor();

  static final MyVars instance = MyVars._privateConstructor();

  String timeZoneName;

  TZDateTime currentTZ() {
    return tz.TZDateTime.now(tz.getLocation(timeZoneName));
  }

  void printLocations() {
    var locations = tz.timeZoneDatabase.locations;
    print(locations.length); // => 429
    print(locations.keys.first); // => "Africa/Abidjan"
    print(locations.keys.last); // => "US/Pacific"
  }
}
