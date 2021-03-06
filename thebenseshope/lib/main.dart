import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:google_map_location_picker/generated/i18n.dart'
    as location_picker;
import 'package:google_map_location_picker/generated/i18n.dart';
import 'package:thebenseshope/animations/fade_animation.dart';
import 'package:thebenseshope/controller/animation_controller.dart';
import 'package:thebenseshope/service/locator.dart';
import 'package:thebenseshope/ui/Login/login.dart';

void main() {
  // setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
// pub run build_runner build// to generate class script
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The bense shope',
      localizationsDelegates: const [
        location_picker.S.delegate,
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en', ''),
        Locale('ar', ''),
      ],
      theme: ThemeData(
        primaryColor: Color(0xFFE91E63),
        primaryColorDark: Color(0xFFC2185B),
        primaryColorLight: Color(0xFFF8BBD0),
        textTheme: TextTheme(caption: TextStyle(color: Color(0xFFFFFFFF))),
        accentColor: Color(0xFFFF5722),
        dividerColor: Color(0xFFBDBDBD),
        primaryTextTheme: TextTheme(
            title: TextStyle(color: Color(0xFF757575)),
            caption: TextStyle(color: Color(0xFF212121))),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  // AnimationController _scaleController;
  // AnimationController _scale2Controller;
  // AnimationController _widthController;
  // AnimationController _positionController;

  // Animation<double> _scaleAnimation;
  // Animation<double> _scale2Animation;
  // Animation<double> _widthAnimation;
  // Animation<double> _positionAnimation;

  // bool hideIcon = false;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   _scaleController = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 185)
  //   );

  //   _scaleAnimation = Tween<double>(
  //     begin: 1.0, end: 0.8
  //   ).animate(_scaleController)..addStatusListener((status) {
  //     if (status == AnimationStatus.completed) {
  //       _widthController.forward();
  //     }
  //   });

  //   _widthController = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 370)
  //   );

  //   _widthAnimation = Tween<double>(
  //     begin: 80.0,
  //     end: 300.0
  //   ).animate(_widthController)..addStatusListener((status) {
  //     if (status == AnimationStatus.completed) {
  //       _positionController.forward();
  //     }
  //   });

  //   _positionController = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 600)
  //   );

  //   _positionAnimation = Tween<double>(
  //     begin: 0.0,
  //     end: 215.0
  //   ).animate(_positionController)..addStatusListener((status) {
  //     if (status == AnimationStatus.completed) {
  //       setState(() {
  //         hideIcon = true;
  //       });
  //       _scale2Controller.forward();
  //     }
  //   });

  //   _scale2Controller = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 185)
  //   );

  //   _scale2Animation = Tween<double>(
  //     begin: 1.0,
  //     end: 32.0
  //   ).animate(_scale2Controller)..addStatusListener((status) {
  //     if (status == AnimationStatus.completed) {
  //       Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: UILogin()));
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login_bg.jpg'), fit: BoxFit.cover)),
        width: double.infinity,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: -50,
              left: 0,
              child: FadeAnimation(
                  1,
                  Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/one.png'),
                            fit: BoxFit.cover)),
                  )),
            ),
            Positioned(
              top: -100,
              left: 0,
              child: FadeAnimation(
                  1.3,
                  Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/one.png'),
                            fit: BoxFit.cover)),
                  )),
            ),
            Positioned(
              top: -150,
              left: 0,
              child: FadeAnimation(
                  1.6,
                  Container(
                    width: width,
                    height: 400,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/one.png'),
                            fit: BoxFit.cover)),
                  )),
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Welcome",
                        style: TextStyle(color: Colors.white, fontSize: 50),
                      )),
                  SizedBox(
                    height: 15,
                  ),
                  FadeAnimation(
                      1.3,
                      Text(
                        "We promis that you'll have the most \nfuss-free time with us ever.",
                        style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            height: 1.4,
                            fontSize: 20),
                      )),
                  SizedBox(
                    height: 180,
                  ),
                  CustomAnimateController(
                    form: UILogin(),
                    duration: 1.6,
                    hideIcon: false,
                  ),
                  // FadeAnimation(1.6, AnimatedBuilder(
                  //   animation: _scaleController,
                  //   builder: (context, child) => Transform.scale(
                  //   scale: _scaleAnimation.value,
                  //   child: Center(
                  //     child: AnimatedBuilder(
                  //       animation: _widthController,
                  //       builder: (context, child) => Container(
                  //         width: _widthAnimation.value,
                  //         height: 80,
                  //         padding: EdgeInsets.all(10),
                  //         decoration: BoxDecoration(
                  //           borderRadius: BorderRadius.circular(50),
                  //           color: Colors.blue.withOpacity(.4)
                  //         ),
                  //         child: InkWell(
                  //           onTap: () {
                  //             _scaleController.forward();
                  //           },
                  //           child: Stack(
                  //             children: <Widget> [
                  //               AnimatedBuilder(
                  //                 animation: _positionController,
                  //                 builder: (context, child) => Positioned(
                  //                   left: _positionAnimation.value,
                  //                   child: AnimatedBuilder(
                  //                     animation: _scale2Controller,
                  //                     builder: (context, child) => Transform.scale(
                  //                       scale: _scale2Animation.value,
                  //                       child: Container(
                  //                         width: 60,
                  //                         height: 60,
                  //                         decoration: BoxDecoration(
                  //                           shape: BoxShape.circle,
                  //                           color: Colors.blue
                  //                         ),
                  //                         child: hideIcon == false ? Icon(Icons.arrow_forward, color: Colors.white,) : Container(),
                  //                       )
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ]
                  //           ),
                  //         ),
                  //       ),
                  //     ),
                  //   )),
                  // )),
                  SizedBox(
                    height: 60,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
