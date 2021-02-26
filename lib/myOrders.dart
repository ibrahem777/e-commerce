import 'package:flutter/material.dart';

class MyOrders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Active header bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black.withOpacity(0.05),
              ),
              // Active bar
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //active icon and text
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(),
                        ),
                        child: Image.asset("assets/icons/active.png"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //Active text
                      Text(
                        "ACTIVE",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  //wait your confirmation dropdown menu
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0),
                    child: DropdownButtonHideUnderline(
                      child: ButtonTheme(
                        alignedDropdown: true,
                        child: DropdownButton(
                          items: [
                            DropdownMenuItem(
                                child: Text(
                              "WAIT YOUR\nCONFIRMATION",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )),
                            DropdownMenuItem(
                                child: Text(
                              "CONFIRM\nRECEIVING",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )),
                            DropdownMenuItem(
                                child: Text(
                              "OUT OF STOCK",
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            )),
                          ],
                          onChanged: (newVal) {},
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            //Active items list
            Container(
              width: double.infinity,
              height: 350.0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    //item row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            //item image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dress2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            //item seller and date
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ALI FASHION",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "22-6-2020",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //price and status
                        Column(
                          children: [
                            //price
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 30,
                                        color: Color(0xFFFAFAFA),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'LE',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFAFAFA),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            //status
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.deepOrangeAccent,
                              ),
                              child: Center(
                                child: Text(
                                  "CONFIRM\nRECEIVING",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFAFAFA),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //Divider
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 3.0,
                      ),
                    ),
                    //item row
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            //item image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dress2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            //item seller and date
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ALI FASHION",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "22-6-2020",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //price and status
                        Column(
                          children: [
                            //price
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 30,
                                        color: Color(0xFFFAFAFA),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'LE',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFAFAFA),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            //status
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.deepOrangeAccent,
                              ),
                              child: Center(
                                child: Text(
                                  "CONFIRM\nRECEIVING",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFAFAFA),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //Divider
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 3.0,
                      ),
                    ),
                    //item row
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            //item image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dress2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            //item seller and date
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ALI FASHION",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "22-6-2020",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //price and status
                        Column(
                          children: [
                            //price
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 30,
                                        color: Color(0xFFFAFAFA),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'LE',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFAFAFA),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            //status
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.deepOrangeAccent,
                              ),
                              child: Center(
                                child: Text(
                                  "CONFIRM\nRECEIVING",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFAFAFA),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //Divider
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 3.0,
                      ),
                    ),
                    //item row
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            //item image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dress2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            //item seller and date
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ALI FASHION",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "22-6-2020",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //price and status
                        Column(
                          children: [
                            //price
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 30,
                                        color: Color(0xFFFAFAFA),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'LE',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFAFAFA),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            //status
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.deepOrangeAccent,
                              ),
                              child: Center(
                                child: Text(
                                  "CONFIRM\nRECEIVING",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Color(0xFFFAFAFA),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //Divider
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //Purchased header bar
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              width: double.infinity,
              height: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.black.withOpacity(0.05),
              ),
              // purchased bar
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //purchased icon and text
                  Row(
                    children: [
                      SizedBox(
                        width: 15.0,
                      ),
                      Container(
                        padding: EdgeInsets.all(5.0),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          shape: BoxShape.circle,
                          border: Border.all(),
                        ),
                        child: Image.asset("assets/icons/rightMark.png"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      //purchased text
                      Text(
                        "PURCHASED",
                        style: TextStyle(
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //purchased items list
            Container(
              width: double.infinity,
              height: 350.0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 15.0,
                    ),
                    //item row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            //item image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dress2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            //item seller and date
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ALI FASHION",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "22-6-2020",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //price and status
                        Column(
                          children: [
                            //price
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 30,
                                        color: Color(0xFFFAFAFA),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'LE',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFAFAFA),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    //Divider
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 3.0,
                      ),
                    ),
                    //item row
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            //item image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dress2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            //item seller and date
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ALI FASHION",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "22-6-2020",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //price and status
                        Column(
                          children: [
                            //price
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 30,
                                        color: Color(0xFFFAFAFA),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'LE',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFAFAFA),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    //Divider
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 3.0,
                      ),
                    ),
                    //item row
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            //item image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dress2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            //item seller and date
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ALI FASHION",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "22-6-2020",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //price and status
                        Column(
                          children: [
                            //price
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 30,
                                        color: Color(0xFFFAFAFA),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'LE',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFAFAFA),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    //Divider
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 3.0,
                      ),
                    ),
                    //item row
                    SizedBox(
                      height: 15.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 15.0,
                            ),
                            //item image
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                    image: AssetImage("assets/images/dress2.jpg"),
                                    fit: BoxFit.fill),
                              ),
                            ),
                            //item seller and date
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ALI FASHION",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  Text(
                                    "22-6-2020",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.black.withOpacity(0.6),
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //price and status
                        Column(
                          children: [
                            //price
                            Container(
                              margin: EdgeInsets.only(right: 15.0),
                              width: 110.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.black.withOpacity(0.5),
                              ),
                              child: Center(
                                child: RichText(
                                  text: TextSpan(
                                      text: '120',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 30,
                                        color: Color(0xFFFAFAFA),
                                      ),
                                      children: <TextSpan>[
                                        TextSpan(
                                          text: 'LE',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color(0xFFFAFAFA),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                    //Divider
                    SizedBox(
                      height: 15.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Divider(
                        thickness: 3.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
