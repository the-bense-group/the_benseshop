import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:loader_search_bar/loader_search_bar.dart';
import 'package:provider/provider.dart';
import 'package:thebenseshope/controller/CustomerController.dart';
import 'package:thebenseshope/controller/OrderController.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
import 'package:thebenseshope/operation/clsGlobal.dart';

part 'ctl_search_customer_mobile.dart';

class CtlSearchCustomerMobile extends StatelessWidget {
  final _cnt;
  CtlSearchCustomerMobile(this._cnt);

  @override
  Widget build(BuildContext context) {
    // return MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider.value(
    //       value: OrderController(),
    //     ),
    //   ],
    //   child: _CtlSearchCustomerMobileMobile(),
    // );
    return _CtlSearchCustomerMobileMobile(_cnt);
  }
}
