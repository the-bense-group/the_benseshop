part of 'ctl_customer.dart';

class _CtlCustomerMobile extends StatefulWidget {
  @override
  __CtlCustomerMobileState createState() => __CtlCustomerMobileState();
}

class __CtlCustomerMobileState extends State<_CtlCustomerMobile> {
  final _Key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var _ctl = Provider.of<CustomerController>(context);
    _ctl.context = context;

    // ClsCustomer _ctl.objCustomer = Provider.of<ClsCustomer>(context);
    return Stack(
      fit: StackFit.passthrough,
      children: <Widget>[
        Scaffold(
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
                      'Customer'.toUpperCase(),
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    )),
              ),
              actions: <Widget>[
                GestureDetector(
                  onTap: () {
                    _ctl.clearCustomer();
                  },
                  behavior: HitTestBehavior.translucent,
                  child: Container(
                    margin: EdgeInsets.only(right: 6.0),
                    padding: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 1.2, color: Theme.of(context).accentColor)),
                    child: Icon(
                      Icons.close,
                      color: Theme.of(context).textTheme.caption.color,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 6.0),
                  padding: EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          width: 1.2, color: Theme.of(context).accentColor)),
                  child: Icon(
                    Icons.list,
                    color: Theme.of(context).textTheme.caption.color,
                  ),
                ),
              ],
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height - 64,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Form(
                    key: _Key,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: BorderSide(
                                    color: Colors.black45, width: 1)),
                            child: TextFormField(
                                style: TextStyle(color: Colors.black54),
                                onChanged: (value) =>
                                    _ctl.objCustomer.customerName = value,
                                controller: TextEditingController(
                                    text: _ctl.objCustomer.customerName),
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
                                side: BorderSide(
                                    color: Colors.black45, width: 1)),
                            child: TextField(
                                // readOnly: true,
                                style: TextStyle(color: Colors.black54),
                                onChanged: (value) =>
                                    _ctl.objCustomer.address = value,
                                controller: TextEditingController(
                                    text: _ctl.objCustomer.address),
                                decoration: InputDecoration(
                                    icon: Container(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Icon(Icons.location_on),
                                    ),
                                    contentPadding: EdgeInsets.only(right: 6.0),
                                    border: InputBorder.none,
                                    hintText: 'Address')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: BorderSide(
                                    color: Colors.black45, width: 1)),
                            child: TextField(
                                onChanged: (value) =>
                                    _ctl.objCustomer.contact = value,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(color: Colors.black54),
                                controller: TextEditingController(
                                    text: _ctl.objCustomer.contact),
                                decoration: InputDecoration(
                                    icon: Container(
                                      padding: const EdgeInsets.only(left: 6.0),
                                      child: Icon(Icons.add_call),
                                    ),
                                    contentPadding: EdgeInsets.only(right: 6.0),
                                    border: InputBorder.none,
                                    hintText: 'Phone Number')),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6.0),
                          child: Material(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                                side: BorderSide(
                                    color: Colors.black45, width: 1)),
                            child: TextField(
                                keyboardType: TextInputType.multiline,
                                onChanged: (value) =>
                                    _ctl.objCustomer.note = value,
                                textCapitalization: TextCapitalization.words,
                                textInputAction: TextInputAction.done,
                                style: TextStyle(
                                    color: Colors.black54,
                                    decoration: TextDecoration.none),
                                controller: TextEditingController(
                                    text: _ctl.objCustomer.note),
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
                        Expanded(child: Container()),
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
                          child: Stack(
                            fit: StackFit.passthrough,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(vertical: 18.0),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).accentColor,
                                    borderRadius: BorderRadius.circular(100)),
                                child: Text(
                                  'Shipping',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                              ),
                              Positioned.fill(
                                child: Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(100),
                                    highlightColor: Colors.transparent,
                                    onTap: () {
                                      _ctl.onSave();
                                    },
                                  ),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )),
        _ctl.isBusy
            ? Positioned.fill(
                child: Container(
                  color: Colors.black45,
                  child: SpinKitCircle(
                    color: Theme.of(context).primaryColorDark,
                    size: 96.0,
                  ),
                ),
              )
            : Container()
      ],
    );
  }
}
