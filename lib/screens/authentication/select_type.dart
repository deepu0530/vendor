import 'package:flutter/material.dart';
import 'package:vendor_app/styles/colors.dart';

class SelectType extends StatefulWidget {
  const SelectType({Key? key}) : super(key: key);

  @override
  _SelectTypeState createState() => _SelectTypeState();
}

class _SelectTypeState extends State<SelectType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F2F2),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 30, right: 30, top: 30),
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.appColor),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Test",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Icon(
                      Icons.close,
                      color: Colors.grey[400],
                      size: 15,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Login With",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      "email/password",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.appColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        showAlertDialog(context);
                      },
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Reset With",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Text(
                      "email otp",
                      style: TextStyle(
                          fontSize: 15,
                          color: AppColors.appColor,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.arrow_drop_down,
                        color: Colors.grey,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(
          Icons.check,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: AppColors.appColor,
      ),
    );
  }

  int select = 1;
  showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "Cancel",
        style: TextStyle(
            fontSize: 15, color: Colors.grey, fontWeight: FontWeight.w400),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: Container(
        height: 50,
        width: 100,
        decoration: BoxDecoration(
            color: AppColors.appColor, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            "OK",
            style: TextStyle(
                fontSize: 15, color: Colors.white, fontWeight: FontWeight.w400),
          ),
        ),
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: AppColors.appColor,
        ),
        child: Text(
          "Login With",
          style: TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
      content: Column(
        children: [
          RadioListTile(
              value: 1,
              title: Text("Email/Password"),
              controlAffinity: ListTileControlAffinity.leading,
              groupValue: select,
              onChanged: (val) {
                print(val);
                setState(() {
                  select != val;
                });
              }),
                RadioListTile(
              value: 2,
              title: Text("Phone/Password"),
              controlAffinity: ListTileControlAffinity.leading,
              groupValue: select,
              onChanged: (val) {
                print("Selected \$ val");
                setState(() {
                  select != val;
                });
              }),
                RadioListTile(
              value: 3,
              title: Text("Phone/OTP"),
              controlAffinity: ListTileControlAffinity.leading,
              groupValue: select,
              onChanged: (val) {
                print("Selected \$ val");
                setState(() {
                  select != val;
                });
              })
        ],
      ),
      actions: [
        Column(
          children: [
            Divider(
              thickness: 1,
              color: Colors.grey,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                cancelButton,
                continueButton,
              ],
            )
          ],
        )
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
