import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Reviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFAFAFA),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(130.0),
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
                //reviews bar
                Container(
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
                            padding: EdgeInsets.only(left: 5.0, right: 5.0, bottom: 3.0),
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              shape: BoxShape.circle,
                              border: Border.all(),
                            ),
                            child: SvgPicture.asset(
                              "assets/icons/star.svg",
                              color: Colors.amber,
                              width: 25,
                              height: 25,
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          //Active text
                          Text(
                            "REVIEWS",
                            style: TextStyle(
                              fontSize: 22,
                            ),
                          ),
                        ],
                      ),
                      //wait your confirmation dropdown menu
                      FlatButton(
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        child: Text("ADD REVIEW"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            //customer review
            Column(
              children: [
                //customer review header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //customer img and name
                    Row(
                      children: [
                        //customer img
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            top: 0,
                            right: 5,
                            bottom: 0,
                          ),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profilePic.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //customer name
                        Text(
                          "IRON MAN",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    //customer review stars
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Wrap(
                        spacing: 3.0,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            " 5.0",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //customer review text
                Padding(
                  padding: const EdgeInsets.only(left: 75.0, right: 10.0),
                  child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy"),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            //customer review with img
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //customer review header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //customer img and name
                    Row(
                      children: [
                        //customer img
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            top: 0,
                            right: 5,
                            bottom: 0,
                          ),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profilePic.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //customer name
                        Text(
                          "IRON MAN",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    //customer review stars
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Wrap(
                        spacing: 3.0,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            " 5.0",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //customer review img
                InkWell(
                  onTap: (){
                    showDialog(
                        barrierColor: Colors.white70,
                        context: context,
                        //review view img
                        builder: (_) => new AlertDialog(
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
                              return Container(
                                color: Colors.transparent,
                                width: double.infinity,
                                //Item Card details
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius
                                      .circular(25),
                                  child: Image.asset(
                                      "assets/images/dress2.jpg"),
                                ),
                              );
                            },
                          ),
                        ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 75.0, right: 10.0),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage("assets/images/dress2.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                //customer review text
                Padding(
                  padding: const EdgeInsets.only(left: 75.0, right: 10.0, top: 5.0),
                  child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy"),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            //customer review
            Column(
              children: [
                //customer review header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //customer img and name
                    Row(
                      children: [
                        //customer img
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            top: 0,
                            right: 5,
                            bottom: 0,
                          ),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profilePic.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //customer name
                        Text(
                          "IRON MAN",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    //customer review stars
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Wrap(
                        spacing: 3.0,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            " 5.0",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //customer review text
                Padding(
                  padding: const EdgeInsets.only(left: 75.0, right: 10.0),
                  child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy"),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            //customer review with img
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //customer review header
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //customer img and name
                    Row(
                      children: [
                        //customer img
                        Container(
                          margin: EdgeInsets.only(
                            left: 10,
                            top: 0,
                            right: 5,
                            bottom: 0,
                          ),
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/profilePic.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        //customer name
                        Text(
                          "IRON MAN",
                          style: TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    //customer review stars
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Wrap(
                        spacing: 3.0,
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          SvgPicture.asset(
                            "assets/icons/star.svg",
                            color: Colors.amber,
                            width: 20,
                            height: 20,
                          ),
                          Text(
                            " 5.0",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //customer review img
                InkWell(
                  onTap: (){
                    showDialog(
                      barrierColor: Colors.white70,
                      context: context,
                      //review view img
                      builder: (_) => new AlertDialog(
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
                            return Container(
                              color: Colors.transparent,
                              width: double.infinity,
                              //Item Card details
                              child: ClipRRect(
                                borderRadius:
                                BorderRadius
                                    .circular(25),
                                child: Image.asset(
                                    "assets/images/dress2.jpg"),
                              ),
                            );
                          },
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 75.0, right: 10.0),
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage("assets/images/dress2.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ),
                ),
                //customer review text
                Padding(
                  padding: const EdgeInsets.only(left: 75.0, right: 10.0, top: 5.0),
                  child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
