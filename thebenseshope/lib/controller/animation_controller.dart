import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:thebenseshope/animations/fade_animation.dart';

class CustomAnimateController extends StatefulWidget {
  Widget form;
  Widget action;
  bool hideIcon;
  double duration;
  double actionHeight;
  double actionWidth;
  double beginAnimation;
  double endAnimation;
  bool isButtonn;
  double widthAnimation;
  int scanDuration;
  CustomAnimateController(
      {this.duration,
      this.action,
      this.form,
      this.isButtonn=true,
      this.actionHeight=60,
      this.actionWidth=60,
      this.beginAnimation=80,
      this.endAnimation=300,
      this.widthAnimation=80,
      this.scanDuration=185,
      this.hideIcon=false});

  @override
  _CustomAnimateControllerState createState() =>
      _CustomAnimateControllerState();
}

class _CustomAnimateControllerState extends State<CustomAnimateController>
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
    hideIcon = widget.hideIcon;
    _scaleController =
        AnimationController(vsync: this, duration: Duration(milliseconds: widget.scanDuration));

    _scaleAnimation =
        Tween<double>(begin: 1.0, end: 0.8).animate(_scaleController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _widthController.forward();
            }
          });

    _widthController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 370));

    _widthAnimation =
        Tween<double>(begin: widget.beginAnimation, end: widget.endAnimation).animate(_widthController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              _positionController.forward();
            }
          });

    _positionController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 600));

    _positionAnimation =
        Tween<double>(begin: 0.0, end: 215.0).animate(_positionController)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              setState(() {
                hideIcon = true;
              });
              _scale2Controller.forward();
            }
          });

    _scale2Controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 185));

    _scale2Animation =
        Tween<double>(begin: 1.0, end: 32.0).animate(_scale2Controller)
          ..addStatusListener((status) {
            if (status == AnimationStatus.completed) {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: widget.form));
            }
          });
  }

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
        widget.duration,
        AnimatedBuilder(
          animation: _scaleController,
          builder: (context, child) => Transform.scale(
              scale: _scaleAnimation.value,
              child: Center(
                child: AnimatedBuilder(
                  animation: _widthController,
                  builder: (context, child) => widget.isButtonn?Container(
                    width: _widthAnimation.value,
                    height: widget.beginAnimation,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Theme.of(context).primaryColorDark.withOpacity(.4)),
                    child: InkWell(
                      onTap: () {
                        _scaleController.forward();
                      },
                      child: Stack(children: <Widget>[
                        AnimatedBuilder(
                          animation: _positionController,
                          builder: (context, child) => Positioned(
                            left: _positionAnimation.value,
                            child: AnimatedBuilder(
                              animation: _scale2Controller,
                              builder: (context, child) => Transform.scale(
                                  scale: _scale2Animation.value,
                                  child: Container(
                                    width: widget.actionWidth,
                                    height: widget.actionHeight,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Theme.of(context).primaryColor),
                                    child: hideIcon == false
                                        ? Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                          )
                                        : widget.action,
                                  )),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ):Container(child: GestureDetector(behavior: HitTestBehavior.translucent,onTap: (){ _scaleController.forward();}, child: widget.action),),
                ),
              )),
        ));
  }
}
