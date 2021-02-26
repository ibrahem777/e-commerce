import 'package:flutter/material.dart';

class CustomerFollowing extends StatefulWidget {
  CustomerFollowing({Key key, this.title}) : super(key: key);
  final String title;

  @override
  CustomerFollowingState createState() => CustomerFollowingState();
}

class CustomerFollowingState extends State<CustomerFollowing>
    with TickerProviderStateMixin {
//  AnimationController _animationController;
//  Animation _animation;
//
//  @override
//  void initState() {
//    _animationController =
//        AnimationController(vsync: this, duration: Duration(seconds: 4));
//    _animation = TweenSequence<Offset>(
//      [
//        TweenSequenceItem(
//            tween: Tween<Offset>(begin: Offset(0, 0), end: Offset(1, -0.2)),
//            weight: 1),
//        TweenSequenceItem(
//            tween: Tween<Offset>(begin: Offset(1, -0.2), end: Offset(0,0)),
//            weight: 1),
//        TweenSequenceItem(
//            tween: Tween<Offset>(begin: Offset(0, 0), end: Offset(-1, -0.2)),
//            weight: 1),
//        TweenSequenceItem(
//            tween: Tween<Offset>(begin: Offset(-1, -0.2), end: Offset(0, 0)),
//            weight: 1),
//      ],
//    ).animate(_animationController);
//
//    _animationController.forward().whenComplete(() {
//      _animationController.repeat(reverse: false);
//      // put here the stuff you wanna do when animation completed!
//    });
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
//              AnimatedBuilder(
//                animation: _animationController,
//                builder: (BuildContext context, Widget child) {
//                  return SlideTransition(
//                    position: _animation,
//                    child: Text("HI!"),
//                  );
//                },
//              ),
              //seller row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //seller image and name
                  Row(
                    children: [
                      //seller image
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePic.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //seller name
                      Text(
                        "ALI FASHION",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //unfollow and share buttons
                  Row(
                    children: [
                      //unfollow btn
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text(
                            "unfollow",
                            style: TextStyle(color: Color(0xFFFAFAFA)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //share btn
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFAFAFA),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          splashRadius: 30,
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("assets/icons/share.png")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              //seller row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //seller image and name
                  Row(
                    children: [
                      //seller image
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePic.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //seller name
                      Text(
                        "ALI FASHION",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //unfollow and share buttons
                  Row(
                    children: [
                      //unfollow btn
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text(
                            "unfollow",
                            style: TextStyle(color: Color(0xFFFAFAFA)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //share btn
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFAFAFA),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          splashRadius: 30,
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("assets/icons/share.png")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              //seller row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //seller image and name
                  Row(
                    children: [
                      //seller image
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePic.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //seller name
                      Text(
                        "ALI FASHION",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //unfollow and share buttons
                  Row(
                    children: [
                      //unfollow btn
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text(
                            "unfollow",
                            style: TextStyle(color: Color(0xFFFAFAFA)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //share btn
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFAFAFA),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          splashRadius: 30,
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("assets/icons/share.png")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              //seller row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //seller image and name
                  Row(
                    children: [
                      //seller image
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePic.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //seller name
                      Text(
                        "ALI FASHION",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //unfollow and share buttons
                  Row(
                    children: [
                      //unfollow btn
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text(
                            "unfollow",
                            style: TextStyle(color: Color(0xFFFAFAFA)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //share btn
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFAFAFA),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          splashRadius: 30,
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("assets/icons/share.png")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              //seller row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //seller image and name
                  Row(
                    children: [
                      //seller image
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePic.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //seller name
                      Text(
                        "ALI FASHION",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //unfollow and share buttons
                  Row(
                    children: [
                      //unfollow btn
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text(
                            "unfollow",
                            style: TextStyle(color: Color(0xFFFAFAFA)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //share btn
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFAFAFA),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          splashRadius: 30,
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("assets/icons/share.png")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              //seller row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //seller image and name
                  Row(
                    children: [
                      //seller image
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePic.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //seller name
                      Text(
                        "ALI FASHION",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //unfollow and share buttons
                  Row(
                    children: [
                      //unfollow btn
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text(
                            "unfollow",
                            style: TextStyle(color: Color(0xFFFAFAFA)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //share btn
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFAFAFA),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          splashRadius: 30,
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("assets/icons/share.png")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              //seller row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //seller image and name
                  Row(
                    children: [
                      //seller image
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage("assets/images/profilePic.jpg"),
                              fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //seller name
                      Text(
                        "ALI FASHION",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  //unfollow and share buttons
                  Row(
                    children: [
                      //unfollow btn
                      Container(
                        width: 80,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.black.withOpacity(0.5),
                        ),
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          child: Text(
                            "unfollow",
                            style: TextStyle(color: Color(0xFFFAFAFA)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //share btn
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFFFAFAFA),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset:
                                  Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          splashRadius: 30,
                          padding: EdgeInsets.all(0),
                          onPressed: () {},
                          icon: Container(
                              width: 30,
                              height: 30,
                              child: Image.asset("assets/icons/share.png")),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
