import 'package:flutter/material.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:provider/provider.dart';
import 'package:thebenseshope/animations/route_animation.dart';
import 'package:thebenseshope/controller/CustomerController.dart';
import 'package:thebenseshope/controller/OrderController.dart';
import 'package:thebenseshope/controlls/ctl_search_customer/ctl_search_customer.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
import 'package:thebenseshope/operation/clsGlobal.dart';
import 'package:thebenseshope/service/locator.dart';
import 'package:thebenseshope/ui/Main/main_layout.dart';

part 'ctl_order_mobile.dart';

class CtlOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: OrderController(),
        ),
        // ChangeNotifierProvider.value(
        //   value: CustomerController(),
        // ),
      ],
      child: _CtlOrderMobile(),
    );
  }
}
