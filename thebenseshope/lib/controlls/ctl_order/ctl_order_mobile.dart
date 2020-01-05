part of 'ctl_order.dart';

class _CtlOrderMobile extends StatefulWidget {
  @override
  __CtlOrderMobileState createState() => __CtlOrderMobileState();
}

class __CtlOrderMobileState extends State<_CtlOrderMobile> {
  LocationResult _pickedLocation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          elevation: 0,
          leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: RouteAnimation(
                action: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        shape: BoxShape.circle),
                    child: Icon(Icons.arrow_back)),
                duration: 1.2,
                actionRadius: 100,
                form: UIMain(),
              )),
          title: Padding(
            padding: EdgeInsets.symmetric(vertical: 6.0),
            child: Container(

                // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Theme.of(context).primaryColorDark.withOpacity(.4),),
                alignment: Alignment.center,
                child: Text(
                  'The bense'.toUpperCase(),
                  style: TextStyle(fontSize: 16, color: Colors.white),
                )),
          ),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 6.0),
              padding: EdgeInsets.all(6.0),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      width: 1.2, color: Theme.of(context).accentColor)),
              child: Icon(
                Icons.add_shopping_cart,
                color: Theme.of(context).textTheme.caption.color,
              ),
            ),
          ],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height - 64,
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      child: TextField(
                          style: TextStyle(color: Colors.black54),
                          controller: TextEditingController(text: 'Alex'),
                          decoration: InputDecoration(
                              icon: Container(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Icon(Icons.people),
                              ),
                              contentPadding: EdgeInsets.only(right: 6.0),
                              border: InputBorder.none,
                              hintText: 'Customer name')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      child: TextField(
                          readOnly: true,
                          style: TextStyle(color: Colors.black54),
                          controller: TextEditingController(text: 'Alex'),
                          decoration: InputDecoration(
                              icon: Container(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Icon(Icons.location_on),
                              ),
                              contentPadding: EdgeInsets.only(right: 6.0),
                              border: InputBorder.none,
                              hintText: 'Customer name')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      child: TextField(
                          style: TextStyle(color: Colors.black54),
                          controller: TextEditingController(text: '0972005060'),
                          decoration: InputDecoration(
                              icon: Container(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Icon(Icons.contact_phone),
                              ),
                              contentPadding: EdgeInsets.only(right: 6.0),
                              border: InputBorder.none,
                              hintText: 'Customer name')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      child: TextField(
                          readOnly: true,
                          style: TextStyle(color: Colors.black54),
                          // controller: TextEditingController(text: ''),
                          decoration: InputDecoration(
                              icon: Container(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Icon(Icons.date_range),
                              ),
                              contentPadding: EdgeInsets.only(right: 6.0),
                              border: InputBorder.none,
                              hintText: 'Departure Date')),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6.0),
                    child: Material(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                          side: BorderSide(color: Colors.black45, width: 1)),
                      child: TextField(
                          readOnly: true,
                          style: TextStyle(color: Colors.black54),
                          // controller: TextEditingController(text: '0972005060'),
                          decoration: InputDecoration(
                              icon: Container(
                                padding: const EdgeInsets.only(left: 6.0),
                                child: Icon(Icons.local_shipping),
                              ),
                              contentPadding: EdgeInsets.only(right: 6.0),
                              border: InputBorder.none,
                              hintText: 'Deliver Man')),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6.0),
                      child: Material(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                            side: BorderSide(color: Colors.black45, width: 1)),
                        child: TextField(
                            textCapitalization: TextCapitalization.words,
                            textInputAction: TextInputAction.done,
                            style: TextStyle(
                                color: Colors.black54,
                                decoration: TextDecoration.none),
                            // controller: TextEditingController(text: '0972005060'),
                            decoration: InputDecoration(
                                icon: Container(
                                  padding: const EdgeInsets.only(left: 6.0),
                                  child: Icon(Icons.note),
                                ),
                                contentPadding: EdgeInsets.only(right: 6.0),
                                border: InputBorder.none,
                                hintText: 'Note')),
                      ),
                    ),
                  ),
                  //       RaisedButton(
                  //   onPressed: () async {
                  //     LocationResult result = await showLocationPicker(
                  //       context,
                  //       apiKey,
                  //       myLocationButtonEnabled: true,
                  //       layersButtonEnabled: true,
                  //     );
                  //     print("result = $result");
                  //     setState(() => _pickedLocation = result);
                  //   },
                  //   child: Text('Pick location'),
                  // ),
                  // Text(_pickedLocation.toString()),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: RouteAnimation(
                      actionRadius: 100,
                      form: UIMain(),
                      duration: 1.2,
                      action: Container(
                        padding: EdgeInsets.symmetric(vertical: 18.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            borderRadius: BorderRadius.circular(100)),
                        child: Text(
                          'Shipping',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
