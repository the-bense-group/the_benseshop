import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:loader_search_bar/loader_search_bar.dart';

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
