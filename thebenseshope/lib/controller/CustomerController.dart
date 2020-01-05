import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:random_string/random_string.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
import 'package:thebenseshope/service/clsApi.dart';
import 'package:thebenseshope/service/locator.dart';

class CustomerController extends ChangeNotifier {
  BuildContext context;
  ClsCustomer objCustomer = ClsCustomer();
  ClsAPI _api = locator<ClsAPI>();
  bool isBusy = false;
  bool isValidated = true;
  String validatedMessage = '';

  clearCustomer() {
    objCustomer = ClsCustomer();
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

  bool checkValidate() {
    if (objCustomer.customerName == null || objCustomer.customerName.isEmpty) {
      isValidated = false;
      validatedMessage = "The customer name could not be empty!";
    } else if (objCustomer.address == null || objCustomer.address.isEmpty) {
      isValidated = false;
      validatedMessage = "The address could not be empty!";
    } else if (objCustomer.contact == null || objCustomer.contact.isEmpty) {
      isValidated = false;
      validatedMessage = "The contact information could not be empty!";
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

  // Stream<QuerySnapshot> fetchProductsAsStream() {
  //   return _api.streamDataCollection();
  // }

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
    if (!checkValidate()) return;
    setBusy();
    objCustomer.customerId = randomNumeric(8);
    await _api.addDocument(objCustomer.toJson()).then((_) {
      objCustomer = ClsCustomer();
      resetBusy();
      Flushbar(
        icon: Icon(
          Icons.check_circle_outline,
          color: Colors.white,
          size: 26,
        ),
        flushbarPosition: FlushbarPosition.TOP,
        backgroundColor: Theme.of(context).primaryColor,
        title: "Success",
        message: 'Your transaction has been completed',
        duration: Duration(seconds: 3),
      )..show(context);
      notifyListeners();
    });

    return;
    // DocumentReference ref = await databaseReference
    //     .collection("tblCustomer")
    //     .add(objCustomer.toJson());
    // print(ref.documentID);
  }

  onUpdate() => {};

  onDelete() => {};
}
