import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';
import 'package:random_string/random_string.dart';
import 'package:thebenseshope/models/clsCustomer.dart';
import 'package:thebenseshope/service/clsApi.dart';
import 'package:path/path.dart' as Path;

class CustomerController extends ChangeNotifier {
  BuildContext context;
  ClsCustomer objCustomer = ClsCustomer();
  ClsAPI _api = ClsAPI("Customer");
  bool isBusy = false;
  bool isValidated = true;
  String validatedMessage = '';
  File image;
  String uploadedFileURL;

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

  Stream<QuerySnapshot> fetchDataStream() {
    return _api.streamDataCollection();
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
    if (!checkValidate()) return;
    setBusy();
    objCustomer.customerId = randomNumeric(8);
    await uploadFile(objCustomer.customerId);
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

  Future chooseFile() async {
    await ImagePicker.pickImage(
      source: ImageSource.gallery,
    ).then((img) {
      image = img;
      notifyListeners();
    });
  }

  Future chooseCamera() async {
    await ImagePicker.pickImage(
      source: ImageSource.camera,
    ).then((img) {
      image = img;
      notifyListeners();
    });
  }

  Future clearImage() async {
    image = null;
    notifyListeners();
  }

  Future uploadFile(String name) async {
    StorageReference storageReference =
        FirebaseStorage.instance.ref().child('Customer/${name.toString()}');
    StorageUploadTask uploadTask = storageReference.putFile(image);
    await uploadTask.onComplete.then((url) {
      clearImage();
    });

    // storageReference.getDownloadURL().then((fileURL) {
    //   uploadedFileURL = fileURL;
    //   objCustomer.imageSrc = uploadedFileURL;
    //   notifyListeners();
    // });
  }

  Future _getImageUrl(String customerId) async {
    final Future<StorageReference> ref = FirebaseStorage.instance
        .getReferenceFromUrl(
            'gs://the-bense-ecommerce.appspot.com/Customer/${customerId.toString()}');
    dynamic url = await ref.then((doc) => doc.getDownloadURL());
    print(url);
  }
}
