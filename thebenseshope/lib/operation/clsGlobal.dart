import 'package:thebenseshope/models/clsOrderTrans.dart';

class ClsGlobalData {
  static double shrinkOffset = 0;
  static ClsOrderTrans objOrder;
  static String getDate() {
    DateTime now = new DateTime.now();
    DateTime date = new DateTime(
        now.year, now.month, now.day, now.hour, now.minute, now.second);

    return date.toString();
  }
}
