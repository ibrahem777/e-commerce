import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:mr_outlets_01/sellerProfileGuestView.dart';

class ImageCard extends StatelessWidget {
  final int price;
  final String loves;
  final String views;
  final String image;

  const ImageCard({
    @required this.price,
    @required this.loves,
    @required this.views,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    var width;
    String followbtn = "FOLLOW";
    return Container(
      child: Column(
        children: [
          //BUY Card widget
          ClipRRect(
            borderRadius: BorderRadius.circular(25),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: <Widget>[
                Center(
                  child: new Container(
                    child: new Material(
                      // on clicking on images at home
                      child: new InkWell(
                        onTap: () {
                          showDialog(
                              barrierColor: Colors.white70,
                              context: context,
                              //item details buy card
                              builder: (_) => SingleChildScrollView(
                                    padding: EdgeInsets.only(bottom: 20),
                                    child: Column(
                                      children: [
                                        //image and header
                                        new AlertDialog(
                                          insetPadding: EdgeInsets.all(1.0),
                                          scrollable: true,
                                          contentPadding: EdgeInsets.all(5.0),
                                          backgroundColor: Color(0xFFFAFAFA),
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(25),
                                          ),
                                          content: Builder(
                                            builder: (context) {
                                              // Get available height and width of the build area of this widget. Make a choice depending on the size.
//                                        var height =
//                                            MediaQuery.of(context).size.height;
                                              width = MediaQuery.of(context)
                                                  .size
                                                  .width;
                                              return Container(
                                                color: Colors.transparent,
                                                width: double.infinity,
                                                //Item Card details
                                                child: Column(
                                                  children: [
                                                    //HEADER
                                                    Stack(
                                                      children: [
                                                        //Profile PIC and seller name
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            InkWell(
                                                              onTap: (){
                                                                Navigator.push(
                                                                  context,
                                                                  MaterialPageRoute(builder: (context) => SellerProfileGuestView()),
                                                                );
                                                              },
                                                              child: Container(
                                                                margin: EdgeInsets
                                                                    .only(
                                                                  left: 20,
                                                                  top: 20,
                                                                  right: 10,
                                                                  bottom: 20,
                                                                ),
                                                                width: 95,
                                                                height: 95,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  shape: BoxShape
                                                                      .circle,
                                                                  image:
                                                                      DecorationImage(
                                                                    image: AssetImage(
                                                                        'assets/images/profilePic.jpg'),
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            //Header text
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 20),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    "ALI FASHION",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            22),
                                                                  ),
                                                                  Text(
                                                                    "350K followers",
                                                                    textAlign:
                                                                        TextAlign
                                                                            .center,
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        //reviews text and action buttons
                                                        Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          children: [
                                                            //reviews
                                                            Container(
                                                              margin: EdgeInsets
                                                                  .only(
                                                                      top: 20,
                                                                      right:
                                                                          25),
                                                              child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Wrap(
                                                                    crossAxisAlignment:
                                                                        WrapCrossAlignment
                                                                            .center,
                                                                    children: [
                                                                      SvgPicture
                                                                          .asset(
                                                                        "assets/icons/star.svg",
                                                                        color: Colors
                                                                            .amber,
                                                                        width:
                                                                            25,
                                                                        height:
                                                                            25,
                                                                      ),
                                                                      Text(
                                                                        " 4.0",
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                24),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Text(
                                                                    "350 reviews",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            //Action Buttons
                                                            Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(left: 124.0,
                                                                      right:
                                                                          10.0,
                                                                      top: 7.0),
                                                                  child:
                                                                      RaisedButton(
                                                                    onPressed:
                                                                        () {
                                                                      followbtn =
                                                                          "FOLLOWING";
                                                                    },
                                                                    textColor:
                                                                        Colors
                                                                            .white,
                                                                    color: Colors
                                                                        .deepOrangeAccent,
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              50),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      color: Colors
                                                                          .transparent,
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        "$followbtn",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsets
                                                                          .only(
                                                                      right:
                                                                          10.0,
                                                                      top: 7.0),
                                                                  child:
                                                                      RaisedButton(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .all(0),
                                                                    onPressed:
                                                                        () {},
                                                                    textColor:
                                                                        Colors
                                                                            .white,
                                                                    color: Color(
                                                                        0xFFB7B7B7),
                                                                    shape:
                                                                        RoundedRectangleBorder(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              50),
                                                                    ),
                                                                    child:
                                                                        Container(
                                                                      color: Colors
                                                                          .transparent,
                                                                      padding:
                                                                          EdgeInsets.all(
                                                                              0),
                                                                      child:
                                                                          Text(
                                                                        "CHAT",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            fontSize:
                                                                                18),
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
                                                              image),
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
                                                      ],
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    //item description
                                                    Text(
                                                      "Lorem ipsum dolor sit amet, consetetur Lorem ipsum dolor sit amet, consetetur",
                                                      textAlign:
                                                          TextAlign.center,
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    //item details
                                                    Padding(
                                                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                                      child: Row(
                                                        crossAxisAlignment: CrossAxisAlignment.end,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          //item size
                                                          Column(
                                                            children: [
                                                              DropdownButton(
                                                                items: [
                                                                  DropdownMenuItem(
                                                                      child: Text(
                                                                    "SIZE 1",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                    ),
                                                                  )),
                                                                  DropdownMenuItem(
                                                                      child: Text(
                                                                    "SIZE 2",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                    ),
                                                                  )),
                                                                  DropdownMenuItem(
                                                                      child: Text(
                                                                    "SIZE 3",
                                                                    style:
                                                                        TextStyle(
                                                                      fontSize:
                                                                          20,
                                                                    ),
                                                                  )),
                                                                ],
                                                                onChanged:
                                                                    (newVal) {},
                                                              ),
                                                              //shoulder size
                                                              Row(
                                                                children: [
                                                                  //shoulder icon
                                                                  Container(
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/icons/shoulder.png"),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.0,
                                                                  ),
                                                                  //from size
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                                top: 5.0),
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border
                                                                          .all(),
                                                                    ),
                                                                    child: Text(
                                                                      "23",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            21,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    " TO ",
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold),
                                                                  ),
                                                                  //to size
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                                top: 5.0),
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border
                                                                          .all(),
                                                                    ),
                                                                    child: Text(
                                                                      "23",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            21,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              //waist size
                                                              Row(
                                                                children: [
                                                                  //waist icon
                                                                  Container(
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child: Image
                                                                        .asset(
                                                                            "assets/icons/waist.png"),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.0,
                                                                  ),
                                                                  //from size
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                                top: 5.0),
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border
                                                                          .all(),
                                                                    ),
                                                                    child: Text(
                                                                      "23",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            21,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    " TO ",
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold),
                                                                  ),
                                                                  //to size
                                                                  Container(
                                                                    padding:
                                                                        EdgeInsets
                                                                            .only(
                                                                                top: 5.0),
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border
                                                                          .all(),
                                                                    ),
                                                                    child: Text(
                                                                      "23",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            21,
                                                                      ),
                                                                    ),
                                                                  ),

                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10,
                                                              ),
                                                              //length icon
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape:
                                                                      BoxShape.circle,
                                                                    ),
                                                                    child: Image.asset(
                                                                        "assets/icons/length.png"),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.0,
                                                                  ),
                                                                  // size
                                                                  Container(
                                                                    padding:
                                                                    EdgeInsets.only(
                                                                        top: 5.0),
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape:
                                                                      BoxShape.circle,
                                                                      border:
                                                                      Border.all(),
                                                                    ),
                                                                    child: Text(
                                                                      "23",
                                                                      textAlign: TextAlign
                                                                          .center,
                                                                      style: TextStyle(
                                                                        fontSize: 21,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    " TO ",
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                    color: Colors.transparent),
                                                                  ),
                                                                  //to size
                                                                  Container(
                                                                    padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                        top: 5.0),
                                                                    width: 35,
                                                                    height: 35,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape: BoxShape
                                                                          .circle,

                                                                    ),
                                                                    child: Text(
                                                                      "23",
                                                                      textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        21,
                                                                        color: Colors.transparent,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 9,
                                                              ),
                                                            ],
                                                          ),
                                                          //price and colors and quantity
                                                          Column(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                            children: [
                                                              //price
                                                              Container(
                                                                padding: EdgeInsets
                                                                    .only(
                                                                        left: 14,
                                                                        top: 0,
                                                                        right: 0,
                                                                        bottom:
                                                                            0),
                                                                height: 35,
                                                                width: 100,
                                                                decoration:
                                                                    new BoxDecoration(
                                                                  color: Colors
                                                                      .black54,
                                                                  borderRadius:
                                                                      new BorderRadius
                                                                              .all(
                                                                          Radius.elliptical(
                                                                              50,
                                                                              50)),
                                                                ),
                                                                child: RichText(
                                                                  text: TextSpan(
                                                                      text:
                                                                          '${price}',
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            'Roboto',
                                                                        fontSize:
                                                                            30,
                                                                        color: Color(
                                                                            0xFFFAFAFA),
                                                                      ),
                                                                      children: <
                                                                          TextSpan>[
                                                                        TextSpan(
                                                                          text:
                                                                              'LE',
                                                                          style:
                                                                              TextStyle(
                                                                            fontSize:
                                                                                18,
                                                                            color:
                                                                                Color(0xFFFAFAFA),
                                                                          ),
                                                                        ),
                                                                      ]),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 25.0,
                                                              ),
                                                              //Colors
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 25,
                                                                    height: 25,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .orangeAccent,
                                                                      shape:
                                                                      BoxShape.circle,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 20.0,
                                                                  ),
                                                                  Container(
                                                                    width: 25,
                                                                    height: 25,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .blueAccent,
                                                                      shape:
                                                                      BoxShape.circle,
                                                                    ),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 20.0,
                                                                  ),
                                                                  Container(
                                                                    width: 25,
                                                                    height: 25,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .purple,
                                                                      shape:
                                                                      BoxShape.circle,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.0,
                                                              ),
                                                              //QTY
                                                              Row(
                                                                children: [
                                                                  IconButton(
                                                                    splashRadius: 20.0,
                                                                    onPressed: (){},
                                                                    icon: Icon(Icons.remove,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    padding:
                                                                    EdgeInsets
                                                                        .only(
                                                                        top: 2.0),
                                                                    width: 30,
                                                                    height: 30,
                                                                    decoration:
                                                                    BoxDecoration(
                                                                      color: Colors
                                                                          .transparent,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                      border: Border
                                                                          .all(),
                                                                    ),
                                                                    child: Text(
                                                                      "1",
                                                                      textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                      style:
                                                                      TextStyle(
                                                                        fontSize:
                                                                        21,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  IconButton(
                                                                    splashRadius: 20.0,
                                                                    onPressed: (){},
                                                                    icon: Icon(Icons.add,
                                                                    ),
                                                                  ),
                                                                  Text(": QTY", style: TextStyle(fontSize: 21),),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 10,
                                                    ),
                                                    DropdownButton(
                                                      items: [
                                                        DropdownMenuItem(
                                                            child: Text(
                                                              "VF CASH",
                                                              style:
                                                              TextStyle(
                                                                fontSize:
                                                                20,
                                                              ),
                                                            )),
                                                        DropdownMenuItem(
                                                            child: Text(
                                                              "VF CASH",
                                                              style:
                                                              TextStyle(
                                                                fontSize:
                                                                20,
                                                              ),
                                                            )),
                                                        DropdownMenuItem(
                                                            child: Text(
                                                              "VF CASH",
                                                              style:
                                                              TextStyle(
                                                                fontSize:
                                                                20,
                                                              ),
                                                            )),
                                                      ],
                                                      onChanged:
                                                          (newVal) {},
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                        //BUY button
                                        Container(
                                          margin: EdgeInsets.only(top: 8),
                                          child: RaisedButton(
                                            onPressed: () {},
                                            textColor: Colors.white,
                                            color: Colors.deepOrangeAccent,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            child: Container(
                                              color: Colors.transparent,
                                              padding: EdgeInsets.only(
                                                  left: 40,
                                                  top: 10,
                                                  right: 40,
                                                  bottom: 10),
                                              child: Text(
                                                "BUY",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(fontSize: 40),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ));
                        },
                        child: new Container(
                          child: Image(
                            image: AssetImage(image),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(left: 0, top: 0, right: 10, bottom: 10),
                  height: 35,
                  width: 90,
                  decoration: new BoxDecoration(
                    color: Color(0xFFFAFAFA),
                    borderRadius:
                        new BorderRadius.all(Radius.elliptical(50, 50)),
                  ),
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                          text: '${price}',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 30,
                            color: Colors.deepOrangeAccent,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'LE',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.deepOrangeAccent,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //home grid widget
          Container(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 15, top: 0, right: 14, bottom: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/heart.svg",
                        color: Colors.red,
                        width: 12,
                        height: 12,
                      ),
                      Text(
                        " ${loves}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/eye.svg",
                        width: 11,
                        height: 11,
                      ),
                      Text(
                        " ${views}",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
