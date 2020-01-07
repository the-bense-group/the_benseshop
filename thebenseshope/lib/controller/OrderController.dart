import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_string/random_string.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
import 'package:thebenseshope/models/clsItemOrder.dart';
import 'package:thebenseshope/models/clsOrderTrans.dart';
import 'package:thebenseshope/operation/clsGlobal.dart';
import 'package:thebenseshope/service/clsApi.dart';
import 'package:thebenseshope/service/locator.dart';

class OrderController extends ChangeNotifier {
  BuildContext context;
  ClsOrderTrans objOrder = ClsOrderTrans();
  var objCustomer = ClsCustomer();
  var objItemOrder = ClsItemOrder();
  ClsAPI _api = ClsAPI("OrderTrans");
  ClsAPI _apiCustomer = ClsAPI("Customer");
  bool isBusy = false;
  bool isValidated = true;
  String validatedMessage = '';

  initNewOrder() {
    objOrder = ClsOrderTrans();
    notifyListeners();
  }

  setBusy() {
    isBusy = true;
    notifyListeners();
  }

  resetBusy() {
    isBusy = false;
    notifyListeners();
  }

  doBack() {
    Navigator.of(context).pop();
  }

  selectedCustomer(ClsCustomer customer) {
    objCustomer = customer;
    print(objCustomer);

    notifyListeners();
    doBack();
  }

  bool checkValidate() {
    if (objOrder.customerInfo.customerId == null ||
        objOrder.customerInfo.customerId.isEmpty) {
      isValidated = false;
      validatedMessage = "The customer  could not be empty!";
    } else {
      isValidated = true;
    }
    if (!isValidated) {
      Flushbar(
        backgroundColor: Theme.of(context).primaryColorDark.withBlue(1),
        title: "Reqired",
        flushbarPosition: FlushbarPosition.TOP,
        message: validatedMessage,
        icon: Icon(
          Icons.warning,
          color: Colors.white,
          size: 26,
        ),
        duration: Duration(seconds: 3),
      )..show(context);
      notifyListeners();
    }
    return isValidated;
  }
  // final databaseReference = Firestore.instance;

  // Future<List<Product>> fetchProducts() async {
  //   var result = await _api.getDataCollection();
  //   products = result.documents
  //       .map((doc) => Product.fromMap(doc.data, doc.documentID))
  //       .toList();
  //   return products;
  // }

  Stream<QuerySnapshot> fetchDataStream() {
    return _apiCustomer.streamDataCollection();
  }

  Future getImageUrl(String customerId) async {
    final Future<StorageReference> ref = FirebaseStorage.instance
        .getReferenceFromUrl(
            'gs://the-bense-ecommerce.appspot.com/Customer/${customerId.toString()}');
    dynamic url =
        await ref.then((doc) => doc.getDownloadURL()).catchError((err) => {});
    print(url + "ddddddddddddddddddddd");
    return url;
  }
  // Future<Product> getProductById(String id) async {
  //   var doc = await _api.getDocumentById(id);
  //   return  Product.fromMap(doc.data, doc.documentID) ;
  // }

  // Future removeProduct(String id) async{
  //    await _api.removeDocument(id) ;
  //    return ;
  // }
  // Future updateProduct(Product data,String id) async{
  //   await _api.updateDocument(data.toJson(), id) ;
  //   return ;
  // }

  Future onSave() async {
    // if (!checkValidate()) return;
    // setBusy();
    objOrder.orderId = randomNumeric(8);
    objOrder.orderStatus = 0;
    objOrder.orderDate = ClsGlobalData.getDate();

    // await _api.addDocument(objOrder.toJson()).then((_) {
    //   initNewOrder();
    //   resetBusy();
    //   Flushbar(
    //     icon: Icon(
    //       Icons.check_circle_outline,
    //       color: Colors.white,
    //       size: 26,
    //     ),
    //     flushbarPosition: FlushbarPosition.TOP,
    //     backgroundColor: Theme.of(context).primaryColor,
    //     title: "Success",
    //     message: 'Your transaction has been completed',
    //     duration: Duration(seconds: 3),
    //   )..show(context);
    //   notifyListeners();
    // });

    return;
    // DocumentReference ref = await databaseReference
    //     .collection("tblCustomer")
    //     .add(objOrder.toJson());
    // print(ref.documentID);
  }

  onUpdate() => {};

  onDelete() => {};
}
