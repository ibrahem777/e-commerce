import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SellerSettings extends StatelessWidget {
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
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //your data
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //header your data
                      Text(
                        "Your Data",
                        style: TextStyle(fontSize: 21),
                      ),
                      //name
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Ali Fashion",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text("Edit",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.6)))),
                        ],
                      ),
                      //mobile num
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "01005252407",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text("Edit",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.6)))),
                        ],
                      ),
                      //email
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "alifashion@gmail.com",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text("Edit",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.6)))),
                        ],
                      ),
                      //address
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Cairo, Al Haram",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text("Edit",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.6)))),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //admins
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //header your data
                      Text(
                        "Add / Remove Admins",
                        style: TextStyle(fontSize: 21),
                      ),
                      //mobile num
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "01005252407",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text("Remove",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.6)))),
                        ],
                      ),
                      //add btn
                      FlatButton(
                        height: 15.0,
                        minWidth: 10.0,
                        padding: EdgeInsets.all(0.0),
                          onPressed: () {},
                          child: Text("Add +",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.deepOrangeAccent))),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //contact us
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //header your data
                      Text(
                        "Contact With Us",
                        style: TextStyle(fontSize: 21),
                      ),
                      //email
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "support@mroutlets.com",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                          FlatButton(
                              onPressed: () {},
                              child: Text("Copy",
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black.withOpacity(0.6)))),
                        ],
                      ),
                    ],
                  ),
                  //delete account
                  FlatButton(
                    padding: EdgeInsets.all(0.0),
                    onPressed: (){
                      showDialog(
                        barrierColor: Colors.white70,
                        context: context,
                        //review view img
                        builder: (_) => new AlertDialog(
                          title: Text("We Are So Sad To See You Go :("),
                          titlePadding: EdgeInsets.only(left: 15.0,bottom: 5.0, top: 15.0),
                          actions: [
                            //confirm
                            Container(
                              margin: EdgeInsets.only(top: 20.0),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                textColor: Colors.white,
                                color: Colors.black.withOpacity(0.5),
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
                            //cancel
                            Container(
                              margin: EdgeInsets.only(top: 20.0),
                              child: RaisedButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
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
                                    "CANCEL",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                              ),
                            ),
                          ],
                          insetPadding: EdgeInsets.all(10.0),
                          scrollable: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
                          backgroundColor: Color(0xFFFAFAFA),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                            BorderRadius.circular(25),
                          ),
                          content: Builder(
                            builder: (context) {
                              return Text("Please note that by deleting your account you will lose all your data and subscriptions",
                              style: TextStyle(fontSize: 14),);
                            },
                          ),
                        ),
                      );
                    },
                    child: Text(
                      "Delete Account",
                      style: TextStyle(fontSize: 21),
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
