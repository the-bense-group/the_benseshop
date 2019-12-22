part of 'login.dart';

class _UILoginMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(3, 9, 23, 1),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/login_bg.jpg'), fit: BoxFit.cover)),
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FadeAnimation(
                1,
                Text(
                  "Login",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 30,
            ),
            FadeAnimation(
                1.3,
                Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 8.0,
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(color: Colors.grey[300]))),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.person_pin,
                                size: 28,
                              ),
                              hintStyle:
                                  TextStyle(color: Colors.grey.withOpacity(.8)),
                              hintText: "Email or Phone number"),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.vpn_key,
                                size: 28,
                              ),
                              hintStyle:
                                  TextStyle(color: Colors.grey.withOpacity(.8)),
                              hintText: "Password"),
                        ),
                      ),
                    ],
                  ),
                )),

            Container(
              margin: EdgeInsets.only(top: 8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    'You have an account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 6.0),
                      child:  Text(
                        "Register",

                        style: TextStyle(decoration: TextDecoration.underline, color:Theme.of(context).primaryColorDark,fontSize: 16)
                      ),
                      
                      // 
                    ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CustomAnimateController(
              form: UIRegister(),
              duration: 1.3,
              // hideIcon: true,
              // action: Center(
              //     child: Text(
              //   'Login',
              //   style: TextStyle(color: Colors.white),
              // )),
            ),

            // FadeAnimation(1.3, Center(
            //   child: Stack(
            //     fit: StackFit.passthrough,
            //     children: <Widget>[
            //       Container(
            //        width: MediaQuery.of(context).size.width*.8,
            //         padding: EdgeInsets.all(15),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(50),
            //           color: Colors.blue[800]
            //         ),
            //         child: Center(child: Text("Login", style: TextStyle(color: Colors.white.withOpacity(.7)),)),
            //       ),
            //       Positioned.fill(
            //         child: Material(
            //           color: Colors.transparent,
            //           child: InkWell(
            //             borderRadius: BorderRadius.circular(50),
            //             highlightColor: Colors.transparent,
            //             onTap: (){},
            //           ),
            //         ),
            //       )
            //     ],
            //   ),
            // )),
          ],
        ),
      ),
    );
  }
}
// class _UILoginMobile extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     SystemChrome.setEnabledSystemUIOverlays([]);

//     return Scaffold(
//       backgroundColor: Color.fromRGBO(3, 9, 23, 1),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         height: MediaQuery.of(context).size.height,
//         decoration: BoxDecoration(
//             image: DecorationImage(
//                 alignment: Alignment.center,
//                 colorFilter: ColorFilter.mode(Colors.black54, BlendMode.darken),
//                 image: AssetImage('assets/login_bg.jpg'),
//                 fit: BoxFit.cover)),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//            SizedBox(height: MediaQuery.of(context).size.height*0.3,),
//             FadeAnimation(
//               1.2,
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 25.0, vertical: 6.0),
//                 child: Container(
//                     child: Material(
//                         borderRadius: BorderRadius.circular(100),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: 'User name',
//                             border: InputBorder.none,
//                             isDense: true,
//                             prefixIcon: Icon(Icons.person_pin),
//                             contentPadding: EdgeInsets.symmetric(
//                                 vertical: 14.0, horizontal: 8),
//                           ),
//                         ))),
//               ),
//             ),
//             FadeAnimation(
//               1.5,
//               Padding(
//                 padding:
//                     const EdgeInsets.symmetric(horizontal: 25.0, vertical: 6.0),
//                 child: Container(
//                     child: Material(
//                         borderRadius: BorderRadius.circular(100),
//                         child: TextField(
//                           decoration: InputDecoration(
//                             hintText: 'Password',
//                             border: InputBorder.none,
//                             isDense: true,
//                             prefixIcon: Icon(Icons.person_pin),
//                             contentPadding: EdgeInsets.symmetric(
//                                 vertical: 14.0, horizontal: 8),
//                           ),
//                         ))),
//               ),
//             ),

//             FadeAnimation(
//               1.8,
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Text(
//                         'You have an account?',
//                         style: TextStyle(color: Colors.white),
//                       ),
//                        SizedBox(height: MediaQuery.of(context).size.height*0.15,),
//                       Text(
//                         "Register",
//                         style: TextStyle(color: Colors.white),
//                       )
//                     ],
//                   ),
//                   FlatButton(
//                     color: Theme.of(context).accentColor,
//                     onPressed: () {},
//                     child: Text('Login'),
//                   ),
//                 ],
//               ),
//             ),
//             Spacer(
//               flex: 3,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
