import 'dart:typed_data';

import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thebenseshope/animations/route_animation.dart';
import 'package:thebenseshope/ui/Search/search.dart';
import 'package:loader_search_bar/loader_search_bar.dart';

part 'main_layout_mobile.dart';

class UIMain extends StatefulWidget {
  @override
  _UIMainState createState() => _UIMainState();
}

class _UIMainState extends State<UIMain> {
  @override
  Widget build(BuildContext context) {
    return _UIMainMobile();
  }
}
