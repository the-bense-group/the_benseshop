import 'package:flutter/material.dart';
import 'package:thebenseshope/animations/route_animation.dart';

import '../main_layout.dart';

 part 'search_mobile.dart';
class UISearch extends StatelessWidget {
  const UISearch({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: _UISearchMobile(),
    );
  }
}