import 'dart:typed_data';
import 'dart:ui';

import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thebenseshope/animations/route_animation.dart';
import 'package:thebenseshope/ui/Search/search.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../animations/fade_animation.dart';

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

class CustomClipPath extends CustomClipper<Path> {
  var radius = 10.0;
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 25);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 25);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
