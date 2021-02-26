import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ChooseCustomer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //seller img and name and followers
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //seller img
                    Container(
                      margin: EdgeInsets.only(
                        left: 10,
                        top: 10,
                        right: 10,
                        bottom: 10.0,
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
                //reviews text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    //reviews
                    Container(
                      margin: EdgeInsets.only(top: 0.0, right: 10.0),
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
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          //divider
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              thickness: 3.0,
            ),
          ),
          //item img
          Container(
            margin: EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
            width: double.infinity,
            height: 200.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: AssetImage("assets/images/dress2.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment(-1.0, -0.7)),
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.4),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
            ),
          ),
          //choose options dropdown menu
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 40,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      spreadRadius: 0,
                      blurRadius: 1,
                      offset: Offset(0.5, 0.7), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
                  maxLength: 1,
                  maxLengthEnforced: true,
                  expands: false,
                  cursorColor: Colors.black12,
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    counterText: "",
                    hintText: "1",
                    contentPadding: EdgeInsets.only(left: 15.0),
                    hintStyle: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
                    filled: true,
                    fillColor: Color(0xFFF7F7F7),
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              DropdownButtonHideUnderline(
                child: ButtonTheme(
                  alignedDropdown: true,
                  child: DropdownButton(
                    items: [
                      DropdownMenuItem(
                          child: Text(
                        "MOST ACTIVE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      )),
                      DropdownMenuItem(
                          child: Text(
                        "MOST ACTIVE",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      )),
                      DropdownMenuItem(
                          child: Text(
                        "TOP VIEWER",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      )),
                    ],
                    onChanged: (newVal) {},
                  ),
                ),
              ),
              RaisedButton(
                color: Color(0xFFF7F7F7),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                onPressed: () {},
                child: Text(
                  "SELECT",
                  style: TextStyle(color: Colors.deepOrangeAccent),
                ),
              ),
            ],
          ),
          //customer choice details
          Container(
            height: 300,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //customer choice details row
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    padding: EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.black.withOpacity(0.05),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //details text row
                        Flexible(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //customer name
                              Text(
                                "CUSTOMER NAME",
                                style: TextStyle(fontSize: 18),
                              ),
                              //love counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("LOVE"),
                                  Text("23"),
                                ],
                              ),
                              //reviews counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("REVIEW"),
                                  Text("4"),
                                ],
                              ),
                              //divider
                              Divider(
                                height: 5.0,
                                thickness: 1.0,
                                color: Colors.black,
                              ),
                              //size
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("SIZE"),
                                  Text("SIZE1"),
                                ],
                              ),
                              //quantity
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("QTY"),
                                  Text("1"),
                                ],
                              ),
                              //color
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("COLOR"),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                              //reviews counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("PAYMENT\nMETHOD"),
                                  Text("CASH"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //customer status and confirm btn
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.5),
                            child: Column(
                              children: [
                                //customer status
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Text(
                                      "ACTIVE CUSTOMER",
                                      style: TextStyle(
                                          color: Colors.deepOrangeAccent),
                                    ),
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.deepOrangeAccent,
                                      size: 15.0,
                                    ),
                                  ],
                                ),
                                //confirm btn
                                Container(
                                  margin: EdgeInsets.only(top: 20.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    textColor: Colors.white,
                                    color: Colors.deepOrangeAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: EdgeInsets.only(
                                          left: 0,
                                          top: 10,
                                          right: 0,
                                          bottom: 10),
                                      child: Text(
                                        "CONFIRM",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //customer choice details row
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    padding: EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.black.withOpacity(0.05),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //details text row
                        Flexible(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //customer name
                              Text(
                                "CUSTOMER NAME",
                                style: TextStyle(fontSize: 18),
                              ),
                              //love counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("LOVE"),
                                  Text("23"),
                                ],
                              ),
                              //reviews counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("REVIEW"),
                                  Text("4"),
                                ],
                              ),
                              //divider
                              Divider(
                                height: 5.0,
                                thickness: 1.0,
                                color: Colors.black,
                              ),
                              //size
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("SIZE"),
                                  Text("SIZE1"),
                                ],
                              ),
                              //quantity
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("QTY"),
                                  Text("1"),
                                ],
                              ),
                              //color
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("COLOR"),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                              //reviews counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("PAYMENT\nMETHOD"),
                                  Text("CASH"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //customer status and confirm btn
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.5),
                            child: Column(
                              children: [
                                //customer status
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Text(
                                      "ACTIVE CUSTOMER",
                                      style: TextStyle(
                                          color: Colors.deepOrangeAccent),
                                    ),
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.deepOrangeAccent,
                                      size: 15.0,
                                    ),
                                  ],
                                ),
                                //confirm btn
                                Container(
                                  margin: EdgeInsets.only(top: 20.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    textColor: Colors.white,
                                    color: Colors.deepOrangeAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: EdgeInsets.only(
                                          left: 0,
                                          top: 10,
                                          right: 0,
                                          bottom: 10),
                                      child: Text(
                                        "CONFIRM",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //customer choice details row
                  Container(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                    padding: EdgeInsets.all(10.0),
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                      color: Colors.black.withOpacity(0.05),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //details text row
                        Flexible(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //customer name
                              Text(
                                "CUSTOMER NAME",
                                style: TextStyle(fontSize: 18),
                              ),
                              //love counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("LOVE"),
                                  Text("23"),
                                ],
                              ),
                              //reviews counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("REVIEW"),
                                  Text("4"),
                                ],
                              ),
                              //divider
                              Divider(
                                height: 5.0,
                                thickness: 1.0,
                                color: Colors.black,
                              ),
                              //size
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("SIZE"),
                                  Text("SIZE1"),
                                ],
                              ),
                              //quantity
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("QTY"),
                                  Text("1"),
                                ],
                              ),
                              //color
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("COLOR"),
                                  Container(
                                    width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                    ),
                                  ),
                                ],
                              ),
                              //reviews counts
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("PAYMENT\nMETHOD"),
                                  Text("CASH"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        //customer status and confirm btn
                        Flexible(
                          flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2.5),
                            child: Column(
                              children: [
                                //customer status
                                Wrap(
                                  crossAxisAlignment: WrapCrossAlignment.center,
                                  children: [
                                    Text(
                                      "ACTIVE CUSTOMER",
                                      style: TextStyle(
                                          color: Colors.deepOrangeAccent),
                                    ),
                                    Icon(
                                      Icons.check_circle_rounded,
                                      color: Colors.deepOrangeAccent,
                                      size: 15.0,
                                    ),
                                  ],
                                ),
                                //confirm btn
                                Container(
                                  margin: EdgeInsets.only(top: 20.0),
                                  child: RaisedButton(
                                    onPressed: () {},
                                    textColor: Colors.white,
                                    color: Colors.deepOrangeAccent,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Container(
                                      color: Colors.transparent,
                                      padding: EdgeInsets.only(
                                          left: 0,
                                          top: 10,
                                          right: 0,
                                          bottom: 10),
                                      child: Text(
                                        "CONFIRM",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
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
