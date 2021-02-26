import 'package:flutter/material.dart';

class Wholesalers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90.0,
        shadowColor: Colors.transparent,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFFAFAFA),
        title: Center(
            child: Text(
          "WHOLESALERS",
          style: TextStyle(fontSize: 40, color: Colors.deepOrangeAccent),
        )),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //seller row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //seller row
                Container(
                  padding: EdgeInsets.only(
                      left: 0.0, top: 4.0, bottom: 4.0, right: 15.0),
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //seller img
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/profilePic.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //seller info
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //seller name
                          Text(
                            "IRON MAN",
                            style: TextStyle(fontSize: 24),
                          ),
                          //seller category
                          Text(
                            "SPACE SHIPS",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //follow button
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                "FOLLOW",
                                style: TextStyle(fontSize: 16 ,color: Color(0xFFFAFAFA)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            //seller row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //seller row
                Container(
                  padding: EdgeInsets.only(
                      left: 0.0, top: 4.0, bottom: 4.0, right: 15.0),
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //seller img
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/profilePic.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //seller info
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //seller name
                          Text(
                            "IRON MAN",
                            style: TextStyle(fontSize: 24),
                          ),
                          //seller category
                          Text(
                            "SPACE SHIPS",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //follow button
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                "FOLLOW",
                                style: TextStyle(fontSize: 16 ,color: Color(0xFFFAFAFA)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            //seller row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //seller row
                Container(
                  padding: EdgeInsets.only(
                      left: 0.0, top: 4.0, bottom: 4.0, right: 15.0),
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //seller img
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/profilePic.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //seller info
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //seller name
                          Text(
                            "IRON MAN",
                            style: TextStyle(fontSize: 24),
                          ),
                          //seller category
                          Text(
                            "SPACE SHIPS",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //follow button
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                "FOLLOW",
                                style: TextStyle(fontSize: 16 ,color: Color(0xFFFAFAFA)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            //seller row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //seller row
                Container(
                  padding: EdgeInsets.only(
                      left: 0.0, top: 4.0, bottom: 4.0, right: 15.0),
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //seller img
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/profilePic.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //seller info
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //seller name
                          Text(
                            "IRON MAN",
                            style: TextStyle(fontSize: 24),
                          ),
                          //seller category
                          Text(
                            "SPACE SHIPS",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //follow button
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                "FOLLOW",
                                style: TextStyle(fontSize: 16 ,color: Color(0xFFFAFAFA)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            //seller row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //seller row
                Container(
                  padding: EdgeInsets.only(
                      left: 0.0, top: 4.0, bottom: 4.0, right: 15.0),
                  width: MediaQuery.of(context).size.width - 40.0,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(80),
                    border: Border.all(),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //seller img
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/images/profilePic.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      //seller info
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //seller name
                          Text(
                            "IRON MAN",
                            style: TextStyle(fontSize: 24),
                          ),
                          //seller category
                          Text(
                            "SPACE SHIPS",
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.black.withOpacity(0.3)),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          //follow button
                          Container(
                            width: 100,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.deepOrangeAccent,
                            ),
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50.0),
                              ),
                              padding: EdgeInsets.all(0),
                              onPressed: () {},
                              child: Text(
                                "FOLLOW",
                                style: TextStyle(fontSize: 16 ,color: Color(0xFFFAFAFA)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
          ],
        ),
      ),
    );
  }
}
