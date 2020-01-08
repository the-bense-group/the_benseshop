part of 'ctl_search_customer.dart';

class _CtlSearchCustomerMobileMobile extends StatelessWidget {
  static List<ClsCustomer> lstCustomer;
  OrderController _ctl;
  _CtlSearchCustomerMobileMobile(this._ctl);
  final transparentImage = Uint8List.fromList(<int>[
    0x89,
    0x50,
    0x4E,
    0x47,
    0x0D,
    0x0A,
    0x1A,
    0x0A,
    0x00,
    0x00,
    0x00,
    0x0D,
    0x49,
    0x48,
    0x44,
    0x52,
    0x00,
    0x00,
    0x00,
    0x01,
    0x00,
    0x00,
    0x00,
    0x01,
    0x08,
    0x06,
    0x00,
    0x00,
    0x00,
    0x1F,
    0x15,
    0xC4,
    0x89,
    0x00,
    0x00,
    0x00,
    0x0A,
    0x49,
    0x44,
    0x41,
    0x54,
    0x78,
    0x9C,
    0x63,
    0x00,
    0x01,
    0x00,
    0x00,
    0x05,
    0x00,
    0x01,
    0x0D,
    0x0A,
    0x2D,
    0xB4,
    0x00,
    0x00,
    0x00,
    0x00,
    0x49,
    0x45,
    0x4E,
    0x44,
    0xAE
  ]);
  List<ClsCustomer> filterCustoemrByQuery(String query) {
    return lstCustomer
        .where((customer) =>
            customer.customerName.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  Widget _buildTrailingIcon(IconData icon, {double padding = 4.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Icon(icon, color: Colors.black54),
    );
  }

  Widget _buildTileDivider() {
    return Container(
      margin: EdgeInsets.only(left: 72),
      height: 1.0,
      color: Colors.black12,
    );
  }

  Widget _buildImageProgressBar() {
    return Center(
      child: Container(
          width: 22,
          height: 22,
          child: CircularProgressIndicator(
            strokeWidth: 2.0,
          )),
    );
  }

  Widget _buildNetworkImage(String uri) {
    return Center(
      child: ClipOval(
        child: new FadeInImage.memoryNetwork(
          placeholder: transparentImage,
          image: uri,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildPersonImage(ClsCustomer customer) {
    return Container(
      width: 48,
      height: 48,
      child: Stack(
        children: [
          _buildImageProgressBar(),
          _buildNetworkImage(customer.imageSrc),
        ],
      ),
    );
  }

  Widget _buildTrailingIcons(ClsCustomer customer) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTrailingIcon(Icons.phone),
        _buildTrailingIcon(Icons.message),
      ],
    );
  }

  Widget _buildPersonTile(ClsCustomer customer) {
    return ListTile(
      leading: _buildPersonImage(customer),
      title: Text(customer.customerName),
      subtitle: Text(customer.contact),
      trailing: _buildTrailingIcons(customer),
    );
  }

  Widget buildPersonRow(ClsCustomer customer) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          _buildPersonTile(customer),
          _buildTileDivider(),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // context = _context;
    // var _ctl = Provider.of<OrderController>(context);
    // _ctl.context = context;
    return Scaffold(
        appBar: SearchBar(
          attrs: SearchBarAttrs(
              textStyle: TextStyle(
                fontSize: 16,
              ),
              primaryDetailColor: Colors.white,
              secondaryDetailColor: Colors.white,
              disabledDetailColor: Colors.white,
              textBoxOutlineRadius: 25,
              searchInputMargin: EdgeInsets.all(0),
              searchBarColor: Theme.of(context).primaryColor),
          defaultBar: AppBar(
            elevation: 2,
            centerTitle: true,
            leading: InkWell(
              onTap: () {
                _ctl.doBack();
              },
              borderRadius: BorderRadius.circular(100),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Theme.of(context).primaryColorDark,
                        shape: BoxShape.circle),
                    child: Icon(Icons.arrow_back)),
              ),
            ),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Container(

                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Theme.of(context).primaryColorDark.withOpacity(.4),),
                  alignment: Alignment.center,
                  child: Text(
                    'CUSTOMER'.toUpperCase(),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
            ),
          ),
          searchHint: 'Search Customer',
          loader: QuerySetLoader<ClsCustomer>(
            querySetCall: filterCustoemrByQuery,
            itemBuilder: buildPersonRow,
            loadOnEachChange: true,
            animateChanges: true,
          ),
        ),
        body: Container(
          child: StreamBuilder(
              stream: _ctl.fetchDataStream(),
              builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.hasData) {
                  lstCustomer = snapshot.data.documents
                      .map((doc) => ClsCustomer.fromJson(doc.data))
                      .toList();
                  return AnimationLimiter(
                    child: ListView.builder(
                        itemCount: lstCustomer.length,
                        itemBuilder: (buildContext, index) {
                          final objCustomer = lstCustomer[index];
                          return AnimationConfiguration.staggeredList(
                              position: index,
                              duration: Duration(milliseconds: 370),
                              child: SlideAnimation(
                                  verticalOffset: 44.0,
                                  child: FadeInAnimation(
                                      child: Container(
                                    height:
                                        (MediaQuery.of(context).size.height -
                                                56) /
                                            9,
                                    child: InkWell(
                                      onTap: () {
                                        _ctl.selectedCustomer(objCustomer);
                                      },
                                      child: buildPersonRow(objCustomer),
                                      // child: Column(
                                      //   mainAxisSize: MainAxisSize.min,
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.spaceBetween,
                                      //   children: <Widget>[
                                      //     Expanded(
                                      //       child: Row(
                                      //         mainAxisAlignment:
                                      //             MainAxisAlignment
                                      //                 .spaceBetween,
                                      //         children: <Widget>[
                                      //           Expanded(
                                      //             flex: 3,
                                      //             child: Padding(
                                      //               padding:
                                      //                   const EdgeInsets.only(
                                      //                       left: 8.0),
                                      //               child:                                                     Container(
                                      //                 width: 48,
                                      //                 height: 48,

                                      //                 child:_ctl.objCustomer.imageSrc!=null? Stack(
                                      //                   children: [
                                      //                     _buildImageProgressBar(),
                                      //                     _buildNetworkImage(
                                      //                       _ctl.objCustomer.imageSrc),
                                      //                   ],
                                      //                 ):Container(),
                                      //               ),
                                      //             ),
                                      //           ),
                                      //           Expanded(
                                      //             flex: 6,
                                      //             child: Container(
                                      //                 height: double.infinity,
                                      //                 padding: EdgeInsets.only(
                                      //                     left: 6.0, top: 6),
                                      //                 child: Column(
                                      //                   crossAxisAlignment:
                                      //                       CrossAxisAlignment
                                      //                           .start,
                                      //                   mainAxisAlignment:
                                      //                       MainAxisAlignment
                                      //                           .spaceAround,
                                      //                   children: <Widget>[
                                      //                     Text(
                                      //                       objCustomer
                                      //                           .customerName,
                                      //                       style: TextStyle(
                                      //                           fontSize: 15,
                                      //                           color: Colors
                                      //                               .black54),
                                      //                     ),
                                      //                     Text(
                                      //                       objCustomer.address,
                                      //                       style: TextStyle(
                                      //                           fontSize: 13,
                                      //                           color: Colors
                                      //                               .black54),
                                      //                     ),
                                      //                   ],
                                      //                 )),
                                      //           ),
                                      //           Expanded(
                                      //             child: Container(),
                                      //           ),
                                      //           InkWell(
                                      //             borderRadius:
                                      //                 BorderRadius.circular(
                                      //                     100),
                                      //             onTap: () {},
                                      //             child: Container(
                                      //               width: 30,
                                      //               padding: EdgeInsets.all(8),
                                      //               child: Icon(
                                      //                 Icons.call,
                                      //                 color: Theme.of(context)
                                      //                     .accentColor,
                                      //               ),
                                      //             ),
                                      //           ),
                                      //           InkWell(
                                      //             borderRadius:
                                      //                 BorderRadius.circular(
                                      //                     100),
                                      //             onTap: () {},
                                      //             child: Container(
                                      //               width: 48,
                                      //               padding: EdgeInsets.all(8),
                                      //               child: Icon(
                                      //                 Icons.chat,
                                      //                 color: Theme.of(context)
                                      //                     .primaryColorDark,
                                      //               ),
                                      //             ),
                                      //           ),
                                      //         ],
                                      //       ),
                                      //     ),
                                      //     Container(
                                      //       margin: EdgeInsets.only(
                                      //           left: 60.0, top: 6.0),
                                      //       decoration: BoxDecoration(
                                      //           border: Border(
                                      //               bottom: BorderSide(
                                      //                   color: Colors.grey
                                      //                       .withOpacity(.6),
                                      //                   width: 1))),
                                      //     ),
                                      //   ],
                                      // ),
                                    ),
                                  ))));
                        }),
                  );
                } else {
                  return Text('Fetching');
                }
              }),
        ));
  }
}
