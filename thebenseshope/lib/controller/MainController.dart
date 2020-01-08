import 'package:flutter/cupertino.dart';

class MainController extends ChangeNotifier {
  double shrinkSet = 0;
  int drawerItemSelectedId = 0;
  drawerItemSelectedIdSet(int drawerItemSelectedId) {
    drawerItemSelectedId = drawerItemSelectedId;
    notifyListeners();
  }

  setShrinkSet(double shrinkSet) {
    shrinkSet = shrinkSet;
    print(shrinkSet);
    notifyListeners();
  }
}
