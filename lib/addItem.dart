import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mr_outlets_01/paymentMethods.dart';

class AddItem extends StatefulWidget {
  @override
  AddItemState createState() => AddItemState();
}

class AddItemState extends State<AddItem> {
  Color circleColor = Colors.deepPurple;
  var checkedValue;
  String _selectedMethod = 'On Delivery';

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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              //divider
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Divider(
                  thickness: 3.0,
                ),
              ),
              //collection name and view collection btn
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("COLLECTION NAME"),
                  //view collection btn
                  RaisedButton(
                    color: Color(0xFFF7F7F7),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    onPressed: () {},
                    child: Text(
                      "VIEW COLLECTION",
                      style: TextStyle(
                          color: Colors.deepOrangeAccent, fontSize: 14),
                    ),
                  ),
                ],
              ),
              //item img
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  //img
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    width: double.infinity,
                    height: 200.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                          image: AssetImage("assets/images/dress3.jpg"),
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
                  //add btn
                  IconButton(
                    padding: EdgeInsets.all(0.0),
                    iconSize: 45.0,
                    color: Color(0xFFF7F7F7),
                    icon: Icon(Icons.add_box),
                    onPressed: () {},
                  )
                ],
              ),
              //description text field
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                width: double.infinity,
                height: 45,
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
                  style:
                      TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
                  maxLines: null,
                  minLines: null,
                  expands: true,
                  cursorColor: Colors.black12,
                  keyboardType: TextInputType.text,
                  decoration: new InputDecoration(
                    counterText: "",
                    hintText: "Describe your product . . .",
                    contentPadding: EdgeInsets.only(left: 15.0),
                    hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.3), fontSize: 18),
                    filled: true,
                    fillColor: Color(0xFFF7F7F7),
                    border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
              //size and color picker
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  children: [
                    //size and color
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //size
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            //size dropdown
                            DropdownButtonHideUnderline(
                              child: ButtonTheme(
                                padding: EdgeInsets.all(0.0),
                                alignedDropdown: true,
                                child: DropdownButton(
                                  items: [
                                    DropdownMenuItem(
                                        child: Text(
                                      "CLOTHES",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    )),
                                    DropdownMenuItem(
                                        child: Text(
                                      "SHOES",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    )),
                                    DropdownMenuItem(
                                        child: Text(
                                      "BAGS",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    )),
                                    DropdownMenuItem(
                                        child: Text(
                                      "NO SIZE",
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    )),
                                  ],
                                  onChanged: (newVal) {},
                                ),
                              ),
                            ),
                            //add size btn
                            Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Colors.transparent,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 0,
                                    blurRadius: 3,
                                    offset: Offset(
                                        0, 1), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Center(
                                child: IconButton(
                                  iconSize: 40,
                                  color: Color(0xFFFAFAFA),
                                  splashRadius: 20,
                                  padding: EdgeInsets.all(0),
                                  onPressed: () {},
                                  icon: Icon(Icons.add_circle_outlined),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            //item size
                            Column(
                              children: [
                                //shoulder size
                                Row(
                                  children: [
                                    //shoulder icon
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                          "assets/icons/shoulder.png"),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    //from size
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.7),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(
                                                0.5, 0.7), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        textAlignVertical: TextAlignVertical.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 21.0),
                                        maxLines: 1,
                                        maxLength: 1,
                                        cursorColor: Colors.black12,
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(
                                          hintText: "1",
                                          contentPadding: EdgeInsets.only(top:10.0, left: 2.0),
                                          counterText: "",
                                          filled: true,
                                          fillColor: Color(0xFFF7F7F7),
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " TO ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //to size
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.7),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(
                                                0.5, 0.7), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        textAlignVertical: TextAlignVertical.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 21.0),
                                        maxLines: 1,
                                        maxLength: 1,
                                        cursorColor: Colors.black12,
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(
                                          hintText: "1",
                                          contentPadding: EdgeInsets.only(top:10.0, left: 2.0),
                                          counterText: "",
                                          filled: true,
                                          fillColor: Color(0xFFF7F7F7),
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
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
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        shape: BoxShape.circle,
                                      ),
                                      child:
                                          Image.asset("assets/icons/waist.png"),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    //from size
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.7),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(
                                                0.5, 0.7), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        textAlignVertical: TextAlignVertical.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 21.0),
                                        maxLines: 1,
                                        maxLength: 1,
                                        cursorColor: Colors.black12,
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(
                                          hintText: "1",
                                          contentPadding: EdgeInsets.only(top:10.0, left: 2.0),
                                          counterText: "",
                                          filled: true,
                                          fillColor: Color(0xFFF7F7F7),
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " TO ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    //to size
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.7),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(
                                                0.5, 0.7), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        textAlignVertical: TextAlignVertical.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 21.0),
                                        maxLines: 1,
                                        maxLength: 1,
                                        cursorColor: Colors.black12,
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(
                                          hintText: "1",
                                          contentPadding: EdgeInsets.only(top:10.0, left: 2.0),
                                          counterText: "",
                                          filled: true,
                                          fillColor: Color(0xFFF7F7F7),
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
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
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset(
                                          "assets/icons/length.png"),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    // size
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.7),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(
                                                0.5, 0.7), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        textAlignVertical: TextAlignVertical.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 21.0),
                                        maxLines: 1,
                                        maxLength: 1,
                                        cursorColor: Colors.black12,
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(
                                          hintText: "1",
                                          contentPadding: EdgeInsets.only(top:10.0, left: 2.0),
                                          counterText: "",
                                          filled: true,
                                          fillColor: Color(0xFFF7F7F7),
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      " TO ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.transparent),
                                    ),
                                    //to size
                                    Container(
                                      padding: EdgeInsets.only(top: 5.0),
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Text(
                                        "23",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 21,
                                          color: Colors.transparent,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        //color
                        Column(
                          children: [
                            SizedBox(
                              height: 14.0,
                            ),
                            //color header
                            Text(
                              "COLOR",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 14.0,
                            ),
                            //add color
                            Row(
                              children: [
                                //color picker icon
//                          Container(
//                            width: 34,
//                            height: 34,
//                            decoration: BoxDecoration(
//                              borderRadius: BorderRadius.circular(50),
//                              color: Color(0xFFFAFAFA),
//                              boxShadow: [
//                                BoxShadow(
//                                  color: Colors.grey.withOpacity(0.2),
//                                  spreadRadius: 3,
//                                  blurRadius: 3,
//                                  offset: Offset(
//                                      0, 1), // changes position of shadow
//                                ),
//                              ],
//                            ),
//                            child: Center(
//                              child: IconButton(
//                                iconSize: 20,
//                                splashRadius: 20,
//                                padding: EdgeInsets.all(0),
//                                onPressed: () {},
//                                icon: Icon(Icons.colorize_sharp),
//                              ),
//                            ),
//                          ),
//                          SizedBox(
//                            width: 20.0,
//                          ),
                                //add icon
                                //add icon
                                Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.transparent,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        spreadRadius: 0,
                                        blurRadius: 3,
                                        offset: Offset(
                                            0, 1), // changes position of shadow
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: IconButton(
                                      iconSize: 40,
                                      color: Color(0xFFFAFAFA),
                                      splashRadius: 20,
                                      padding: EdgeInsets.all(0),
                                      onPressed: () {},
                                      icon: Icon(Icons.add_circle_outlined),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            //colors
                            Column(
                              children: [
                                //color row
                                Row(
                                  children: [
                                    //color circle
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: circleColor,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    //qty
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.7),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(
                                                0.5, 0.7), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        textAlignVertical: TextAlignVertical.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 21.0),
                                        maxLines: 1,
                                        maxLength: 1,
                                        cursorColor: Colors.black12,
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(
                                          hintText: "1",
                                          contentPadding: EdgeInsets.only(top:10.0, left: 2.0),
                                          counterText: "",
                                          filled: true,
                                          fillColor: Color(0xFFF7F7F7),
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                //color circle
                                Row(
                                  children: [
                                    //color circle
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        color: circleColor,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 30.0,
                                    ),
                                    //qty
                                    Container(
                                      width: 35,
                                      height: 35,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.7),
                                            spreadRadius: 0,
                                            blurRadius: 1,
                                            offset: Offset(
                                                0.5, 0.7), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: TextField(
                                        textAlign: TextAlign.center,
                                        textAlignVertical: TextAlignVertical.center,
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 21.0),
                                        maxLines: 1,
                                        maxLength: 1,
                                        cursorColor: Colors.black12,
                                        keyboardType: TextInputType.number,
                                        decoration: new InputDecoration(
                                          hintText: "1",
                                          contentPadding: EdgeInsets.only(top:10.0, left: 2.0),
                                          counterText: "",
                                          filled: true,
                                          fillColor: Color(0xFFF7F7F7),
                                          border: new OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(50.0),
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
                    SizedBox(
                      height: 10.0,
                    ),
                    //payment methods and price
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //payment method
                        Container(
                          margin: EdgeInsets.only(top: 10.0),
                          width: 180,
                          height: 90,
                          child: InputDecorator(
                              expands: false,
                              decoration: InputDecoration(
                                labelText: 'Payment Methods',
                                labelStyle: TextStyle(fontSize: 24),
                                border: const OutlineInputBorder(),
                              ),
                              child: DropdownButtonHideUnderline(
                                  child: DropdownButton(
                                      isExpanded: false,
                                      // A global variable used to keep track of the selection
                                      items: [
                                        DropdownMenuItem(
                                          child: PaymentMethods("On Delivery",1),
                                        ),
                                        DropdownMenuItem(
                                          child: PaymentMethods("VF Cash",2),
                                        ),
                                        DropdownMenuItem(
                                          child: PaymentMethods("Post Mail",3),
                                        )
                                      ],
                                      onChanged: (selectedItem) => setState(
                                            () =>
                                                _selectedMethod = selectedItem,
                                          )))),
                        ),
                        //price
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            //price header
                            Text(
                              "PRICE",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),
                            //price text field
                            Container(
                              width: 100,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.7),
                                    spreadRadius: 0,
                                    blurRadius: 1,
                                    offset: Offset(
                                        0.5, 0.7), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: TextField(
                                textAlign: TextAlign.center,
                                textAlignVertical: TextAlignVertical.center,
                                style: TextStyle(
                                    color: Colors.black, fontSize: 21),
                                maxLines: 1,
                                maxLength: 5,
                                cursorColor: Colors.black12,
                                keyboardType: TextInputType.number,
                                decoration: new InputDecoration(
                                  counterText: "",
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  filled: true,
                                  fillColor: Color(0xFFF7F7F7),
                                  border: new OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50.0),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
