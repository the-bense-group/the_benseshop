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
      appBar: AppBar(
        brightness: Brightness.light,
        leading: Icon(
          Icons.menu,
          color: Theme.of(context).textTheme.caption.color,
        ),
        actions: <Widget>[
          Spacer(flex: 3,),
          Expanded(
            flex: 12,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6.0,vertical: 8.0),
              child: Material(
                borderRadius: BorderRadius.circular(100),
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 6.0),
                              child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search"
                  ),
                ),
                            ),
              ),
            ),
          ),
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
                    decoration:
                        BoxDecoration(color: Theme.of(context).accentColor,shape:BoxShape.circle),
                    child: Text('2',style: TextStyle(fontSize: 10),)),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: CircleAvatar(
              
              child: Icon(Icons.person_pin),
            ),
          )
        ],
      ),
      body: Container(
        child: Text("Main"),
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
    );
  }
}
