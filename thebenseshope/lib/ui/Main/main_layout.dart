import 'dart:typed_data';
import 'dart:ui';

import 'package:circle_bottom_navigation/circle_bottom_navigation.dart';
import 'package:circle_bottom_navigation/widgets/tab_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:thebenseshope/animations/route_animation.dart';
import 'package:thebenseshope/controller/CustomerController.dart';
import 'package:thebenseshope/controller/MainController.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:thebenseshope/controlls/ctl_customer/ctl_customer.dart';
import 'package:thebenseshope/controlls/ctl_order/ctl_order.dart';
import 'package:thebenseshope/service/locator.dart';
import '../../animations/fade_animation.dart';

part 'main_layout_mobile.dart';

class UIMain extends StatefulWidget {
  @override
  _UIMainState createState() => _UIMainState();
}

class _UIMainState extends State<UIMain> {
  @override
  Widget build(BuildContext context) {
    // return ChangeNotifierProvider.value(
    //   value: MainController(),
    //   child: _UIMainMobile(),
    // );
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: locator<MainController>(),
        )
      ],
      child: _UIMainMobile(),
    );
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
