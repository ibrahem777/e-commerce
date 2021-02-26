import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SellerProfileGuestView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(55.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Column(
              children: [
                Stack(
                  children: [
                    //Profile PIC and seller name
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //seller img
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            top: 10,
                            right: 10,
                            bottom: 0,
                          ),
                          width: 95,
                          height: 95,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profilePic.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //Header text
                        Container(
                          margin: EdgeInsets.only(top: 12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "ALI FASHION",
                                style: TextStyle(fontSize: 21),
                              ),
                              Text(
                                "350K followers",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    //reviews text and action buttons
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        //reviews
                        Container(
                          margin: EdgeInsets.only(top: 12.0, right: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Wrap(
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/star.svg",
                                    color: Colors.amber,
                                    width: 25,
                                    height: 25,
                                  ),
                                  Text(
                                    " 4.0",
                                    style: TextStyle(fontSize: 21),
                                  ),
                                ],
                              ),
                              Text(
                                "350 reviews",
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                        //Action Buttons
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 122.0, right: 10.0, top: 9.0),
                              child: RaisedButton(
                                onPressed: () {},
                                textColor: Colors.white,
                                color: Colors.deepOrangeAccent,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Container(
                                  color: Colors.transparent,
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    "FOLLOW",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                              const EdgeInsets.only(right: 10.0, top: 7.0),
                              child: RaisedButton(
                                padding: EdgeInsets.all(0),
                                onPressed: () {},
                                textColor: Colors.white,
                                color: Color(0xFFB7B7B7),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Container(
                                  color: Colors.transparent,
                                  padding: EdgeInsets.all(0),
                                  child: Text(
                                    "CHAT",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10.0, bottom: 15.0),
          child: Column(
            children: [
              //divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  thickness: 3.0,
                ),
              ),
              //post text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 15.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consetetur Lorem amet dolor sit amet,"
                  " consetetur Lorem ipsum dolor sit amet dolor",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //item image
              Stack(
                alignment:
                Alignment.bottomRight,
                children: [
                  //item image
                  ClipRRect(
                    borderRadius:
                    BorderRadius
                        .circular(25),
                    child: Image.asset(
                        "assets/images/dress3.jpg"),
                  ),
                  //Love and comment
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .end,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets
                            .only(
                            right:
                            10.0,
                            bottom:
                            10.0),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius
                              .circular(
                              50),
                          child:
                          Container(
                            width: 50,
                            height: 50,
                            color: Color(
                                0xFFFAFAFA),
                            child:
                            IconButton(
                              padding: EdgeInsets.only(
                                  top:
                                  6.0,
                                  left:
                                  6.0,
                                  right:
                                  6.0),
                              onPressed:
                                  () {},
                              icon: SvgPicture
                                  .asset(
                                "assets/icons/comment.svg",
                                color: Colors
                                    .deepOrangeAccent,
                                width: 60,
                                height:
                                60,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets
                            .only(
                            right:
                            10.0,
                            bottom:
                            10.0),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius
                              .circular(
                              50),
                          child:
                          Container(
                            width: 50,
                            height: 50,
                            color: Color(
                                0xFFFAFAFA),
                            child:
                            IconButton(
                              onPressed:
                                  () {},
                              padding: EdgeInsets.only(
                                  top:
                                  6.0,
                                  left:
                                  4.0,
                                  right:
                                  4.0),
                              icon: SvgPicture
                                  .asset(
                                "assets/icons/heartImg.svg",
                                color: Colors
                                    .red,
                                width: 70,
                                height:
                                70,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //price
                  Positioned(
                    left: 10,
                    child: Container(
                      margin:
                      EdgeInsets.only(left: 0, top: 0, right: 10, bottom: 10),
                      height: 45,
                      width: 110,
                      decoration: new BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius:
                        new BorderRadius.all(Radius.elliptical(50, 50)),
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: '120',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 33,
                                color: Colors.deepOrangeAccent,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'LE',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //loves and views
              Container(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 15, top: 5.0, right: 14, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/heart.svg",
                            color: Colors.red,
                            width: 14.5,
                            height: 14.5,
                          ),
                          Text(
                            " 2.3k",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/eye.svg",
                            width: 13,
                            height: 13,
                          ),
                          Text(
                            " 2.5k",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              //divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  thickness: 3.0,
                ),
              ),
              //post text
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10.0, vertical: 15.0),
                child: Text(
                  "Lorem ipsum dolor sit amet, consetetur Lorem amet dolor sit amet,"
                      " consetetur Lorem ipsum dolor sit amet dolor",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              //item image
              Stack(
                alignment:
                Alignment.bottomRight,
                children: [
                  //item image
                  ClipRRect(
                    borderRadius:
                    BorderRadius
                        .circular(25),
                    child: Image.asset(
                        "assets/images/dress4.jpg"),
                  ),
                  //Love and comment
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment
                        .end,
                    children: [
                      Padding(
                        padding:
                        const EdgeInsets
                            .only(
                            right:
                            10.0,
                            bottom:
                            10.0),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius
                              .circular(
                              50),
                          child:
                          Container(
                            width: 50,
                            height: 50,
                            color: Color(
                                0xFFFAFAFA),
                            child:
                            IconButton(
                              padding: EdgeInsets.only(
                                  top:
                                  6.0,
                                  left:
                                  6.0,
                                  right:
                                  6.0),
                              onPressed:
                                  () {},
                              icon: SvgPicture
                                  .asset(
                                "assets/icons/comment.svg",
                                color: Colors
                                    .deepOrangeAccent,
                                width: 60,
                                height:
                                60,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets
                            .only(
                            right:
                            10.0,
                            bottom:
                            10.0),
                        child: ClipRRect(
                          borderRadius:
                          BorderRadius
                              .circular(
                              50),
                          child:
                          Container(
                            width: 50,
                            height: 50,
                            color: Color(
                                0xFFFAFAFA),
                            child:
                            IconButton(
                              onPressed:
                                  () {},
                              padding: EdgeInsets.only(
                                  top:
                                  6.0,
                                  left:
                                  4.0,
                                  right:
                                  4.0),
                              icon: SvgPicture
                                  .asset(
                                "assets/icons/heartImg.svg",
                                color: Colors
                                    .red,
                                width: 70,
                                height:
                                70,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  //price
                  Positioned(
                    left: 10,
                    child: Container(
                      margin:
                      EdgeInsets.only(left: 0, top: 0, right: 10, bottom: 10),
                      height: 45,
                      width: 110,
                      decoration: new BoxDecoration(
                        color: Color(0xFFFAFAFA),
                        borderRadius:
                        new BorderRadius.all(Radius.elliptical(50, 50)),
                      ),
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                              text: '120',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 33,
                                color: Colors.deepOrangeAccent,
                              ),
                              children: <TextSpan>[
                                TextSpan(
                                  text: 'LE',
                                  style: TextStyle(
                                    fontSize: 21,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                ),
                              ]),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              //loves and views
              Container(
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 15, top: 5.0, right: 14, bottom: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/heart.svg",
                            color: Colors.red,
                            width: 14.5,
                            height: 14.5,
                          ),
                          Text(
                            " 2.3k",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/eye.svg",
                            width: 13,
                            height: 13,
                          ),
                          Text(
                            " 2.5k",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
