import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thebenseshope/animations/fade_animation.dart';

class RouteAnimation extends StatefulWidget {
  Widget form;
  Widget action;
  double duration;

  RouteAnimation({
    this.duration,
    this.action,
    this.form,
  });

  @override
  _RouteAnimationState createState() => _RouteAnimationState();
}

class _RouteAnimationState extends State<RouteAnimation>
    with TickerProviderStateMixin {
  AnimationController _scaleController;
  AnimationController _scale2Controller;
  AnimationController _widthController;
  AnimationController _positionController;

  Animation<double> _scaleAnimation;
  Animation<double> _scale2Animation;
  Animation<double> _widthAnimation;
  Animation<double> _positionAnimation;

  bool hideIcon = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 64));

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _widthController.forward();
            }
          });

    _widthController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 120));

    _widthAnimation =
        Tween<double>(begin: 40, end: 40).animate(_widthController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _positionController.forward();
            }
          });

    _positionController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 120));

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 64.0).animate(_positionController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                hideIcon = true;
              });
              _scale2Controller.forward();
            }
          });

    _scale2Controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 64));

    _scale2Animation =
        Tween<double>(begin: 1.0, end: 252.0).animate(_scale2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.pushAndRemoveUntil(
                  context,
                  PageTransition(
                      type: PageTransitionType.rightToLeftWithFade,
                      child: widget.form),
                  (Route<dynamic> route) => false);
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleController,
      builder: (context, child) => Transform.scale(
          scale: _scaleAnimation.value,
          child: Center(
            child: AnimatedBuilder(
                animation: _widthController,
                // builder:(context, child) => Container(child: GestureDetector(behavior: HitTestBehavior.translucent,onTap: (){ _scaleController.forward();}, child: widget.action),) ,
                builder: (context, child) => Container(
                      width: _widthAnimation.value,
                      height: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Theme.of(context)
                              .primaryColorDark
                              .withOpacity(.4)),
                      child: InkWell(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onTap: () {
                          _scaleController.forward();
                        },
                        child: Stack(children: <Widget>[
                          AnimatedBuilder(
                            animation: _positionController,
                            builder: (context, child) => Positioned(
                              child: AnimatedBuilder(
                                animation: _scale2Controller,
                                builder: (context, child) => Transform.scale(
                                    scale: _scale2Animation.value,
                                    child: Container(
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color:
                                              Theme.of(context).primaryColor),
                                      child: hideIcon == false
                                          ? widget.action
                                          : Container(),
                                    )),
                              ),
                            ),
                          ),
                        ]),
                      ),
                    )),
          )),
    );
  }
}
