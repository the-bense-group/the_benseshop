part of 'search.dart';
class _UISearchMobile extends StatelessWidget {
  const _UISearchMobile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: Stack(
              fit: StackFit.passthrough,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(6.0),
                  child: Icon(Icons.arrow_back),
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
        ),
        actions: <Widget>[
          Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 12,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
              child: Container(

                  // decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),color: Theme.of(context).primaryColorDark.withOpacity(.4),),
                  alignment: Alignment.center,
                  child: Text(
                    'The bense shop'.toUpperCase(),
                    style: TextStyle(fontSize: 16),
                  )),
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
          Padding(
            padding: const EdgeInsets.only(right: 6.0),
            child: CircleAvatar(
              child: Container(
                padding: EdgeInsets.all(6.0),
                child:RouteAnimation(
                  action:  Icon(Icons.search),
                  form: UISearch(),
                  duration: 1.2,
                ),
                decoration: BoxDecoration(shape: BoxShape.circle),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Text("Main"),
      ),
     
    );
  }
}