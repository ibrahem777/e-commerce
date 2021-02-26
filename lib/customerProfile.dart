import 'package:flutter/material.dart';
import 'package:mr_outlets_01/customerFollowing.dart';
import 'package:mr_outlets_01/myOrders.dart';
import 'homeAll.dart';
import 'homeFollowing.dart';

class CustomerProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                backgroundColor: Color(0xFFFAFAFA),
                title: Column(
                  children: [
                  Center(
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 10.0),
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
                  ),
                  Text("IRON MAN", style: TextStyle(fontSize: 20, color: Colors.black),),
                  ],
                ),
                toolbarHeight: 160,
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                forceElevated: innerBoxIsScrolled,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(68.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.only(left: 10, bottom: 10.0, top: 10.0),
                      child: TabBar(
                        isScrollable: true,
                        labelPadding: EdgeInsets.only(left: 5),
                        unselectedLabelColor: Colors.deepOrangeAccent,
                        indicatorSize: TabBarIndicatorSize.label,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.deepOrangeAccent,
                        ),
                        tabs: <Widget>[
                          Tab(
                            child: Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Center(
                                child: Text(
                                  "MY ORDERS",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Container(
                              padding: EdgeInsets.only(left: 10, right: 10),
                              child: Center(
                                child: Text(
                                  "FOLLOWING",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ];
          },
          body: new TabBarView(
            children: <Widget>[
              MyOrders(),
              CustomerFollowing(),
            ],
          ),
        ),
//        appBar: AppBar(
//          toolbarHeight: 210,
//          automaticallyImplyLeading: false,
//          backgroundColor: Color(0xFFFAFAFA),
//          elevation: 0,
//          bottom: PreferredSize(
//            preferredSize: const Size.fromHeight(15.0),
//            child: Align(
//              alignment: Alignment.center,
//              child: Column(
//                children: [
//                  //tabs
//                  Container(
//                    margin: EdgeInsets.only(top: 15.0 ,left: 10),
//                    child: TabBar(
//                      isScrollable: true,
//                      labelPadding: EdgeInsets.only(left: 0),
//                      unselectedLabelColor: Colors.deepOrangeAccent,
//                      indicatorSize: TabBarIndicatorSize.label,
//                      indicator: BoxDecoration(
//                        borderRadius: BorderRadius.circular(50),
//                        color: Colors.deepOrangeAccent,
//                      ),
//                      tabs: <Widget>[
//                        Tab(
//                          child: Container(
//                            padding: EdgeInsets.only(left: 15, right: 15),
//                            child: Center(
//                              child: Text(
//                                "MY ORDERS",
//                                style: TextStyle(fontSize: 20),
//                              ),
//                            ),
//                          ),
//                        ),
//                        Tab(
//                          child: Container(
//                            padding: EdgeInsets.only(left: 15, right: 15),
//                            child: Center(
//                              child: Text(
//                                "FOLLOWING",
//                                style: TextStyle(fontSize: 20),
//                              ),
//                            ),
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                ],
//              ),
//            ),
//          ),
////
//        ),
//        body: TabBarView(
//          children: <Widget>[
//            HomeAll(),
//            HomeFollowing(),
//          ],
//        ),
      ),
    );
  }
}
