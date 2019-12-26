part of 'main_layout.dart';

class _UIMainMobile extends StatefulWidget {
  @override
  __UIMainMobileState createState() => __UIMainMobileState();
}

class __UIMainMobileState extends State<_UIMainMobile> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
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
          leading: _leadingButton,
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
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              delegate: MySliverAppBar(
                  expandedHeight: MediaQuery.of(context).size.height * .36),
              pinned: true,
            ),
            new SliverList(
                delegate: new SliverChildListDelegate(_buildList(50))),
          ],
        ),
      ),
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

      // return Scaffold(
      //   appBar: AppBar(
      //     brightness: Brightness.light,
      //     leading: Padding(
      //       padding: const EdgeInsets.all(8.0),
      //       child: CircleAvatar(
      //         child: Stack(
      //           fit: StackFit.passthrough,
      //           children: <Widget>[
      //             Container(
      //               padding: EdgeInsets.all(6.0),
      //               child: Icon(Icons.person_pin),
      //               decoration: BoxDecoration(shape: BoxShape.circle),
      //             ),
      //             Positioned.fill(
      //               child: Material(
      //                 color: Colors.transparent,
      //                 child: InkWell(
      //                   borderRadius: BorderRadius.circular(100),
      //                   onTap: () {},
      //                 ),
      //               ),
      //             )
      //           ],
      //         ),
      //       ),
      //     ),
      //     actions: <Widget>[
      //       Spacer(
      //         flex: 3,
      //       ),
      //       Expanded(
      //         flex: 12,
      //         child: Padding(
      //           padding: EdgeInsets.symmetric(vertical: 6.0),
      //           child: Container(

      //               // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Theme.of(context).primaryColorDark.withOpacity(.4),),
      //               alignment: Alignment.center,
      //               child: Text(
      //                 'The bense shop'.toUpperCase(),
      //                 style: TextStyle(fontSize: 16),
      //               )),
      //         ),

      //       ),
      //       Stack(
      //         fit: StackFit.passthrough,
      //         children: <Widget>[
      //           Container(
      //             width: 38,
      //             child: Icon(
      //               Icons.notifications_none,
      //               color: Theme.of(context).textTheme.caption.color,
      //             ),
      //           ),
      //           Positioned(
      //             top: 6.0,
      //             left: 4.0,
      //             child: Container(
      //                 padding: EdgeInsets.all(4.0),
      //                 decoration: BoxDecoration(
      //                     color: Theme.of(context).accentColor,
      //                     shape: BoxShape.circle),
      //                 child: Text(
      //                   '2',
      //                   style: TextStyle(fontSize: 10),
      //                 )),
      //           )
      //         ],
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.only(right: 6.0),
      //         child: CircleAvatar(
      //           child: Container(
      //             padding: EdgeInsets.all(6.0),
      //             child:RouteAnimation(
      //               action:  Icon(Icons.search),
      //               form: UISearch(),
      //               duration: 1,
      //             ),
      //             decoration: BoxDecoration(shape: BoxShape.circle),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      //   body: Container(
      //     child: Text("Main"),
      //   ),
      //   bottomNavigationBar: CircleBottomNavigation(
      //     initialSelection: currentPage,
      //     tabs: [
      //       TabData(icon: Icons.home, title: 'Home'),
      //       TabData(icon: Icons.shopping_cart, title: "Delivery"),
      //       TabData(icon: Icons.search, title: "Location"),
      //       TabData(icon: Icons.chat, title: "Chat"),
      //     ],
      //     onTabChangedListener: (index) => setState(() => currentPage = index),
      //   ),
      // );
    );
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

Widget get _leadingButton => InkWell(
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
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    ));

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
  final double expandedHeight;

  MySliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        // Image.asset(
        //   "assets/food_delivery.jpg",
        //   fit: BoxFit.fill,
        // ),
        Container(
          color: Theme.of(context).accentColor,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Pending",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                  ),
                ),
                Text(
                  "Delivered",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                  ),
                ),
                Text(
                  "Hold",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                  ),
                ),
                Text(
                  "Refund",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 23,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: new AssetImage('assets/food_delivery1.jpg'),
                fit: BoxFit.cover,
              )),
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 20.0),
                              child: Container(
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                    borderRadius: BorderRadius.circular(16),
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withBlue(2)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                                  fontSize: 20,
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
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 20.0),
                              child: Container(
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                    borderRadius: BorderRadius.circular(16),
                                    color: Theme.of(context)
                                        .accentColor
                                        .withBlue(2)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text('Payment',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 9,
                                      child: Center(
                                        child: Text('1',
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
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 20.0),
                              child: Container(
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                    borderRadius: BorderRadius.circular(16),
                                    color: Theme.of(context)
                                        .primaryColorLight
                                        .withGreen(2)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
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
                                            child: Text('Pending',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 9,
                                      child: Center(
                                        child: Text('3',
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
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 12.0, horizontal: 20.0),
                              child: Container(
                                padding: EdgeInsets.all(4.0),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 3, color: Colors.white),
                                    borderRadius: BorderRadius.circular(16),
                                    color: Theme.of(context)
                                        .primaryColorDark
                                        .withBlue(2)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Expanded(
                                      flex: 4,
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.assignment_return,
                                            size: 26,
                                            color: Colors.white,
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(left: 4),
                                            child: Text('Return',
                                                style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                )),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      flex: 9,
                                      child: Center(
                                        child: Text('1',
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
