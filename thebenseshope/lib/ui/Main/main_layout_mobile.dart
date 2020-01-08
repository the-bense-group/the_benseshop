part of 'main_layout.dart';

class _UIMainMobile extends StatefulWidget {
  @override
  __UIMainMobileState createState() => __UIMainMobileState();
}

var dateString = 'What date are you looking for?';
Widget _children(BuildContext context, MainController _ctl, int indx) {
  if (indx == 0) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: new AssetImage('assets/food_delivery.jpg'),
        colorFilter: ColorFilter.mode(Colors.black38, BlendMode.darken),
        fit: BoxFit.cover,
      )),
      child: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: MySliverAppBar(
              ctl: _ctl,
              expandedHeight: MediaQuery.of(context).size.height * .32,
            ),
            // pinned: true,
            floating: true,

            // floating: true,
          ),
          SliverFillRemaining(
            child: Container(
              child: Column(
                children: <Widget>[
                  FadeAnimation(
                    1.1,
                    GestureDetector(
                      onTap: () {
                        DatePicker.showDatePicker(context,
                            showTitleActions: true,
                            minTime: DateTime(2018, 1, 1),
                            maxTime: DateTime(2030, 12, 30),
                            theme: DatePickerTheme(
                                headerColor: Theme.of(context).primaryColor,
                                backgroundColor: Colors.white,
                                itemStyle: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                                cancelStyle: TextStyle(color: Colors.white),
                                doneStyle: TextStyle(
                                    color: Colors.white, fontSize: 16)),
                            //              onChanged: (date) {
                            //   print('change $date in time zone ' +
                            //       date.timeZoneOffset.inHours.toString());
                            // },
                            onConfirm: (date) {
                          dateString = date.day.toString() +
                              "- " +
                              date.month.toString() +
                              "- " +
                              date.year.toString();

                          // (context as Element).markNeedsBuild();
                        }, currentTime: DateTime.now(), locale: LocaleType.en);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.9),
                          // borderRadius: BorderRadius.circular(100)
                        ),
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        alignment: Alignment.center,
                        child: Text(
                          dateString,
                          style: TextStyle(fontSize: 18, color: Colors.black54),
                        ),
                      ),
                    ),
                    beginTransaction: -15,
                  ),
                  Expanded(
                    child: FadeAnimation(
                      1.1,
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 12.0,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(.9),
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(8))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.0, horizontal: 8.0),
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            width: 1, color: Colors.grey))),
                                child: Row(
                                  children: <Widget>[
                                    Icon(Icons.history,
                                        color: Colors.black54.withOpacity(.5)),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 4.0),
                                      child: Text('Delivery History',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color:
                                                Colors.black54.withOpacity(.5),
                                          )),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                flex: 12,
                                child: SingleChildScrollView(
                                  child: Container(
                                    child: Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0, horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Flexible(
                                                flex: 1,
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .accentColor,
                                                      shape: BoxShape.circle),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 5,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  'Delivered',
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  '7',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 4,
                                                child: Text(
                                                  '65.00',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0, horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Flexible(
                                                flex: 1,
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .primaryColorLight
                                                          .withRed(2),
                                                      shape: BoxShape.circle),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 5,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  'Payment',
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  '7',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 4,
                                                child: Text(
                                                  '65.00',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0, horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Flexible(
                                                flex: 1,
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .primaryColorLight
                                                          .withGreen(2),
                                                      shape: BoxShape.circle),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 5,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  'Holding',
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  '7',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 4,
                                                child: Text(
                                                  '65.00',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 12.0, horizontal: 8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              Flexible(
                                                flex: 1,
                                                child: Container(
                                                  padding: EdgeInsets.all(5),
                                                  decoration: BoxDecoration(
                                                      color: Theme.of(context)
                                                          .primaryColorDark
                                                          .withRed(2),
                                                      shape: BoxShape.circle),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 5,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  'Return',
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Flexible(
                                                flex: 2,
                                                fit: FlexFit.tight,
                                                child: Text(
                                                  '7',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                              Flexible(
                                                fit: FlexFit.tight,
                                                flex: 4,
                                                child: Text(
                                                  '65.00',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                      color: Colors.black54),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                    // child: StreamBuilder<QuerySnapshot>(
                                    //   stream: Firestore.instance
                                    //       .collection('tbl_delivery')
                                    //       .snapshots(),
                                    //   builder: (BuildContext context,
                                    //       AsyncSnapshot<QuerySnapshot> snapshot) {
                                    //     if (snapshot.hasError)
                                    //       return new Text(
                                    //           'Error: ${snapshot.error}');
                                    //     switch (snapshot.connectionState) {
                                    //       case ConnectionState.waiting:
                                    //         return new Text('Loading...');
                                    //       default:
                                    //         return new ListView(
                                    //           children: snapshot.data.documents
                                    //               .map((DocumentSnapshot
                                    //                   document) {
                                    //             return new ListTile(
                                    //               title: new Text(
                                    //                   document['delv_man']),
                                    //               subtitle: new Text(
                                    //                   document['customer_name']),
                                    //             );
                                    //           }).toList(),
                                    //         );
                                    //     }
                                    //   },
                                    // ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      beginTransaction: -15,
                    ),
                  ),
                  RouteAnimation(
                    duration: .9,
                    isClearCache: false,
                    form: CtlOrder(),
                    action: Container(
                      height: 56,
                      decoration: BoxDecoration(
                        color: Theme.of(context).accentColor.withOpacity(.9),
                        // borderRadius: BorderRadius.circular(8)
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.add_shopping_cart, color: Colors.white),
                          Text(
                            'New Lead',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // new SliverList(
          //     delegate: new SliverChildListDelegate(
          //   _buildList(50),
          // )),
        ],
      ),
    );
  } else if (indx == 1) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: new AssetImage('assets/food_delivery.jpg'),
              fit: BoxFit.cover)),
      child: Column(
        children: <Widget>[
          FadeAnimation(
              1.1,
              ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * .26,
                    color: Theme.of(context).primaryColor.withOpacity(.7),
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 6.0, horizontal: 10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.local_shipping,
                                    color: Colors.white,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 4.0),
                                    child: Text(
                                      'Delivery',
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: Theme.of(context)
                                              .textTheme
                                              .caption
                                              .color),
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                children: <Widget>[
                                  Text(
                                    'Total Amount',
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: Theme.of(context)
                                            .textTheme
                                            .caption
                                            .color),
                                  ),
                                  Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 8.0, vertical: 4.0),
                                      decoration: BoxDecoration(
                                          color: Theme.of(context).accentColor,
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      margin: EdgeInsets.only(top: 6.0),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.attach_money,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                          Text(
                                            '160.00',
                                            style: TextStyle(
                                                fontSize: 16,
                                                color: Theme.of(context)
                                                    .textTheme
                                                    .caption
                                                    .color),
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(14.0),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 4,
                                    color: Theme.of(context)
                                        .accentColor
                                        .withOpacity(.7)),
                                shape: BoxShape.circle),
                            child: Text(
                              '10',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 40),
                            ),
                          ),
                        )
                      ],
                    ),
                  )))
        ],
      ),
    );
  } else if (indx == 2) {
    return Text('Location');
  } else {
    return Text('Chat');
  }
}

class __UIMainMobileState extends State<_UIMainMobile> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int currentPage = 0;
  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(color: Theme.of(context).primaryColorDark),
        // decoration: BoxDecoration(
        //     image: DecorationImage(
        //         fit: BoxFit.fill,
        //         image: AssetImage('path/to/header_background.png'))
        //         ),1
        child: Stack(fit: StackFit.passthrough, children: <Widget>[
          Positioned.fill(
              top: 12.0,
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            width: 3, color: Theme.of(context).accentColor)),
                    child: CircleAvatar(
                        radius: 42,
                        backgroundColor: Colors.white.withOpacity(.8),
                        child: Text('TBense')),
                  ),
                  Text("The bense online shop",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w500)),
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text('thebenseshop@gmail.com',
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  )
                ],
              )),
        ]));
  }

  List<Widget> _lstItemDrawer = [
    _createDrawerItem(
        icon: Icons.add_shopping_cart, form: CtlOrder(), text: "Order"),
    _createDrawerItem(
        icon: Icons.library_add, form: CtlCustomer(), text: "New Item"),
    _createDrawerItem(
        icon: Icons.people, form: CtlCustomer(), text: "Customer"),
    _createDrawerItem(
        icon: Icons.add_call, form: CtlCustomer(), text: "0972005060"),
    _createDrawerItem(
        icon: Icons.info_outline, form: CtlCustomer(), text: "About Me"),
  ];

  static Widget _createDrawerItem({IconData icon, String text, Widget form}) {
    return RouteAnimation(
      form: form,
      duration: .9,
      action: Container(
        child: ListTile(
          title: Row(
            children: <Widget>[
              Icon(
                icon,
                color: Color(0xFFE91E63),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.black45),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    final MainController _ctl = Provider.of(context);
    return Scaffold(
        key: _scaffoldKey,
        appBar: SearchBar(
          // iconified: false,
          attrs: SearchBarAttrs(
              textStyle: TextStyle(
                fontSize: 14,
              ),
              textBoxOutlineRadius: 50,
              primaryDetailColor: Colors.white,
              disabledDetailColor: Colors.white,
              statusBarColor: Colors.white,
              secondaryDetailColor: Colors.white,
              // searchInputMargin: EdgeInsets.symmetric(vertical: 4),
              searchBarColor: Theme.of(context).primaryColor,
              textBoxOutlineColor: Colors.transparent),

          // searchItem: SearchItem.menu(
          //   builder: (_) => PopupMenuItem(
          //         child: Text("Search  🔍"),
          //         value: "search",
          //       ),
          //   gravity: SearchItemGravity.end,
          // ),
          defaultBar: AppBar(
            backgroundColor: Theme.of(context).primaryColorDark,
            elevation: 0,
            leading: InkWell(
                borderRadius: BorderRadius.circular(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    child: Stack(
                      fit: StackFit.passthrough,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(6.0),
                          child: Icon(Icons.person_pin),
                          decoration: BoxDecoration(shape: BoxShape.circle),
                        ),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(100),
                              onTap: () {
                                _scaffoldKey.currentState.openDrawer();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
            title: Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Container(

                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Theme.of(context).primaryColorDark.withOpacity(.4),),
                  alignment: Alignment.center,
                  child: Text(
                    'The bense shop'.toUpperCase(),
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  )),
            ),
            actions: <Widget>[
              Stack(
                fit: StackFit.passthrough,
                children: <Widget>[
                  Container(
                    width: 38,
                    child: Icon(
                      Icons.notifications_none,
                      color: Theme.of(context).textTheme.caption.color,
                    ),
                  ),
                  Positioned(
                    top: 6.0,
                    left: 4.0,
                    child: Container(
                        padding: EdgeInsets.all(4.0),
                        decoration: BoxDecoration(
                            color: Theme.of(context).accentColor,
                            shape: BoxShape.circle),
                        child: Text(
                          '2',
                          style: TextStyle(fontSize: 10),
                        )),
                  )
                ],
              ),
            ],
          ),
          searchHint: 'What are you looking for?',

          loader: QuerySetLoader<Person>(
            querySetCall: Person.filterPersonsByQuery,
            itemBuilder: Person.buildPersonRow,
            loadOnEachChange: true,
            animateChanges: true,
          ),
        ),
        body: _children(context, _ctl, currentPage),
        bottomNavigationBar: CircleBottomNavigation(
          initialSelection: currentPage,
          tabs: [
            TabData(icon: Icons.home, title: 'Home'),
            TabData(icon: Icons.shopping_cart, title: "Delivery"),
            TabData(icon: Icons.search, title: "Location"),
            TabData(icon: Icons.chat, title: "Chat"),
          ],
          onTabChangedListener: (index) => setState(() => currentPage = index),
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              _createHeader(),
              Expanded(
                child: ListView.builder(
                    itemCount: _lstItemDrawer.length,
                    itemBuilder: (BuildContext context, int idx) {
                      return Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: Colors.grey.withOpacity(.8),
                                      width: .8))),
                          child: _lstItemDrawer[idx]);
                    }),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
                alignment: Alignment.centerLeft,
                color: Theme.of(context).primaryColor,
                child: Text('version 1.0.0',
                    style: TextStyle(color: Colors.white)),
              )
            ],
          ),
        ));
  }
}

List _buildList(int count) {
  List<Widget> listItems = List();

  for (int i = 0; i < count; i++) {
    listItems.add(new Padding(
        padding: new EdgeInsets.all(20.0),
        child: new Text('Item ${i.toString()}',
            style: new TextStyle(fontSize: 25.0))));
  }

  return listItems;
}

Drawer get _drawer => Drawer();

class Person {
  const Person(this.name, this.uri, this.address, this.hasPhone, this.hasEmail);

  final String name;
  final String uri;
  final String address;
  final bool hasPhone;
  final bool hasEmail;

  static const _imageSize = 48.0;
  static const _progressBarSize = 24.0;
  static const _tileDividerMargin = 72.0;

  static List<Person> filterPersonsByQuery(String query) {
    return persons
        .where(
            (person) => person.name.toLowerCase().contains(query.toLowerCase()))
        .toList();
  }

  static Widget buildPersonRow(Person person) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          _buildPersonTile(person),
          _buildTileDivider(),
        ],
      ),
    );
  }

  static Widget _buildPersonTile(Person person) {
    return ListTile(
      leading: _buildPersonImage(person),
      title: Text(person.name),
      subtitle: Text(person.address),
      trailing: _buildTrailingIcons(person),
    );
  }

  static Widget _buildPersonImage(Person person) {
    return Container(
      width: _imageSize,
      height: _imageSize,
      child: Stack(
        children: [
          _buildImageProgressBar(),
          _buildNetworkImage(person.uri),
        ],
      ),
    );
  }

  static Widget _buildImageProgressBar() {
    return Center(
      child: Container(
          width: _progressBarSize,
          height: _progressBarSize,
          child: CircularProgressIndicator(
            strokeWidth: 2.0,
          )),
    );
  }

  static Widget _buildNetworkImage(String uri) {
    return Center(
      child: ClipOval(
        child: new FadeInImage.memoryNetwork(
          placeholder: transparentImage,
          image: uri,
        ),
      ),
    );
  }

  static Widget _buildTrailingIcons(Person person) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildTrailingIcon(Icons.phone, person.hasPhone),
        _buildTrailingIcon(Icons.mail_outline, person.hasEmail),
        _buildTrailingIcon(Icons.more_vert, true, padding: 0.0),
      ],
    );
  }

  static Widget _buildTrailingIcon(IconData icon, bool enabled,
      {double padding = 4.0}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: Icon(
        icon,
        color: enabled ? Colors.black54 : Colors.black26,
      ),
    );
  }

  static Widget _buildTileDivider() {
    return Container(
      margin: EdgeInsets.only(left: _tileDividerMargin),
      height: 1.0,
      color: Colors.black12,
    );
  }

  static const List<Person> persons = [
    Person('Derek Robertson', 'https://randomuser.me/api/portraits/men/4.jpg',
        '8397 California St', true, false),
    Person('Ethel Mills', 'https://randomuser.me/api/portraits/women/60.jpg',
        '5050 Dogwood Ave', true, true),
    Person('Aiden Cruz', 'https://randomuser.me/api/portraits/men/87.jpg',
        '8866 W Gray St', false, false),
    Person('Earl Ray', 'https://randomuser.me/api/portraits/men/40.jpg',
        '3220 Central St', false, true),
    Person('Arnold Bailey', 'https://randomuser.me/api/portraits/men/92.jpg',
        '1809 Abby Park St', true, true),
    Person('Evelyn Oliver', 'https://randomuser.me/api/portraits/women/90.jpg',
        '3220 Central St', true, false),
    Person('Wesley Byrd', 'https://randomuser.me/api/portraits/men/61.jpg',
        '3603 W Tropical Pkwy', true, true),
    Person('Andre Stewart', 'https://randomuser.me/api/portraits/men/73.jpg',
        '5931 Railroad St', false, true),
    Person('Denise Rose', 'https://randomuser.me/api/portraits/women/95.jpg',
        '5928 Cherry St', false, false),
    Person('Jane Morrison', 'https://randomuser.me/api/portraits/women/4.jpg',
        '3499 Perfect Day Ave', true, true),
  ];
}

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

class MySliverAppBar extends SliverPersistentHeaderDelegate {
  final MainController ctl;
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight, @required this.ctl});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return FadeAnimation(
      1.1,
      Container(
        child: Stack(
          fit: StackFit.expand,
          overflow: Overflow.visible,
          children: [
            // Image.asset(
            //   "assets/food_delivery.jpg",
            //   fit: BoxFit.fill,
            // ),

            // Center(
            //   child: Opacity(
            //     opacity: shrinkOffset / expandedHeight,
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceAround,
            //       crossAxisAlignment: CrossAxisAlignment.end,
            //       children: <Widget>[
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 2.0),
            //           child: Container(
            //             padding: EdgeInsets.symmetric(horizontal: 4.0),
            //             decoration: BoxDecoration(
            //                 color: Theme.of(context)
            //                     .primaryColorDark
            //                     .withOpacity(.6),
            //                 borderRadius: BorderRadius.circular(6.0)),
            //             alignment: Alignment.center,
            //             child: Row(
            //               children: <Widget>[
            //                 Icon(
            //                   Icons.local_shipping,
            //                   color: Colors.white,
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 2.0),
            //                   child: Text(
            //                     "Deliver",
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.w700,
            //                       fontSize: 16,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 2.0),
            //           child: Container(
            //             padding: EdgeInsets.symmetric(horizontal: 4.0),
            //             decoration: BoxDecoration(
            //                 color: Theme.of(context)
            //                     .primaryColorDark
            //                     .withOpacity(.6),
            //                 borderRadius: BorderRadius.circular(6.0)),
            //             alignment: Alignment.center,
            //             child: Row(
            //               children: <Widget>[
            //                 Icon(
            //                   Icons.monetization_on,
            //                   color: Colors.white,
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 2.0),
            //                   child: Text(
            //                     "Payment",
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.w700,
            //                       fontSize: 16,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 2.0),
            //           child: Container(
            //             padding: EdgeInsets.symmetric(horizontal: 4.0),
            //             decoration: BoxDecoration(
            //                 color: Theme.of(context)
            //                     .primaryColorDark
            //                     .withOpacity(.6),
            //                 borderRadius: BorderRadius.circular(6.0)),
            //             alignment: Alignment.center,
            //             child: Row(
            //               children: <Widget>[
            //                 Icon(
            //                   Icons.add_shopping_cart,
            //                   color: Colors.white,
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 2.0),
            //                   child: Text(
            //                     "Hold",
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.w700,
            //                       fontSize: 16,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //         Padding(
            //           padding: const EdgeInsets.symmetric(vertical: 2.0),
            //           child: Container(
            //             padding: EdgeInsets.symmetric(horizontal: 2.0),
            //             decoration: BoxDecoration(
            //                 color: Theme.of(context)
            //                     .primaryColorDark
            //                     .withOpacity(.6),
            //                 borderRadius: BorderRadius.circular(6.0)),
            //             alignment: Alignment.center,
            //             child: Row(
            //               children: <Widget>[
            //                 Icon(
            //                   Icons.assignment_return,
            //                   color: Colors.white,
            //                 ),
            //                 Padding(
            //                   padding: const EdgeInsets.only(left: 2.0),
            //                   child: Text(
            //                     "Return",
            //                     style: TextStyle(
            //                       color: Colors.white,
            //                       fontWeight: FontWeight.w700,
            //                       fontSize: 16,
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            ClipPath(
              child: Container(
                color: Theme.of(context).primaryColor.withOpacity(.5),
              ),
              clipper: CustomClipPath(),
            ),
            Positioned(
              child: Opacity(
                opacity: (1 - shrinkOffset / expandedHeight),
                child: Container(
                  height: double.infinity,
                  alignment: Alignment.topCenter,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 4.0,
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 3,
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withBlue(2),
                                  child: Container(
                                    padding: EdgeInsets.all(4.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.local_shipping,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: Text('Delivery',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 9,
                                          child: Center(
                                            child: Text('5',
                                                style: TextStyle(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 3,
                                  color: Theme.of(context)
                                      .primaryColorLight
                                      .withRed(12),
                                  child: Container(
                                    padding: EdgeInsets.all(4.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.monetization_on,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: Text('Payment',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 9,
                                          child: Center(
                                            child: Text('5',
                                                style: TextStyle(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 3,
                                  color: Theme.of(context)
                                      .primaryColorLight
                                      .withGreen(12),
                                  child: Container(
                                    padding: EdgeInsets.all(4.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.monetization_on,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: Text('Hold',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 9,
                                          child: Center(
                                            child: Text('5',
                                                style: TextStyle(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 3,
                                  color: Theme.of(context)
                                      .primaryColorDark
                                      .withRed(12),
                                  child: Container(
                                    padding: EdgeInsets.all(4.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Expanded(
                                          flex: 4,
                                          child: Row(
                                            children: <Widget>[
                                              Icon(
                                                Icons.monetization_on,
                                                size: 26,
                                                color: Colors.white,
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 4.0),
                                                child: Text('Return',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white,
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Expanded(
                                          flex: 9,
                                          child: Center(
                                            child: Text('5',
                                                style: TextStyle(
                                                  fontSize: 32,
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(
                        flex: 2,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      beginTransaction: 15,
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
