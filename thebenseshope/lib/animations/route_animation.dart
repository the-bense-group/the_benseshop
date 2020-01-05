import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class RouteAnimation extends StatefulWidget {
  Widget form;
  Widget action;
  double duration;
  double actionRadius;
  bool isPopContext;
  bool isClearCache;
  RouteAnimation(
      {this.duration,
      this.action,
      this.form,
      this.actionRadius = 0,
      this.isPopContext = false,
      this.isClearCache = true});

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
        Tween<double>(begin: 1.0, end: 1.0).animate(_scale2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              if (widget.isPopContext) {
                Navigator.of(context).pop();
              }
              if (widget.isClearCache) {
                Navigator.pushAndRemoveUntil(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        child: widget.form),
                    (Route<dynamic> route) => false);
              } else {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeftWithFade,
                        child: widget.form));
              }
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _scaleController,
      builder: (context, child) => Center(
        child: AnimatedBuilder(
            animation: _widthController,
            // builder:(context, child) => Container(child: GestureDetector(behavior: HitTestBehavior.translucent,onTap: (){ _scaleController.forward();}, child: widget.action),) ,
            builder: (context, child) => Container(
                  alignment: Alignment.center,
                  child: Stack(children: <Widget>[
                    AnimatedBuilder(
                      animation: _positionController,
                      builder: (context, child) => Positioned(
                          child: AnimatedBuilder(
                        animation: _scale2Controller,
                        builder: (context, child) => Transform.scale(
                          scale: _scale2Animation.value,
                          child: widget.action,
                        ),
                      )),
                    ),
                    Positioned.fill(
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius:
                              BorderRadius.circular(widget.actionRadius),
                          highlightColor: Colors.transparent,
                          onTap: () {
                            _scaleController.forward();
                          },
                        ),
                      ),
                    )
                  ]),
                )),
      ),
    );
  }
}
