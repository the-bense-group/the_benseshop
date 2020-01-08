import 'dart:io';

import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_map_location_picker/google_map_location_picker.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:thebenseshope/animations/route_animation.dart';
import 'package:thebenseshope/controller/CustomerController.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
import 'package:thebenseshope/service/locator.dart';
import 'package:thebenseshope/ui/Main/main_layout.dart';

part 'ctl_customer_mobile.dart';

class CtlCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CustomerController(),
        ),
        // Provider<ClsCustomer>(create: (_) => ClsCustomer()),
      ],
      child: _CtlCustomerMobile(),
    );
  }
}
