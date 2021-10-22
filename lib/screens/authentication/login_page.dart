import 'package:flutter/material.dart';
import 'package:vendor_app/screens/authentication/select_type.dart';
import 'package:vendor_app/styles/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
   final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
           
            decoration: BoxDecoration(
              color: AppColors.appColor,
            ),
           
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      color: Color(0xFFF3F2F2),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w700),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0, vertical: 5),
                              margin: EdgeInsets.symmetric(vertical: 25),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              prefixIcon: Image(image: AssetImage("assets/images/fluentmail-28-filled.png")),
                              hintText: "Email",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                            ),
                            
                          ),
                        ),
                         Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 0, vertical: 5),
                              margin: EdgeInsets.only(top: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0xFFFFFFFF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset:
                                    Offset(0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: TextField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              prefixIcon: Image(image: AssetImage("assets/images/fluentkey-24-filled.png")),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                fontSize: 16,
                              color: Colors.grey[400],
                              fontWeight: FontWeight.w400,
                              ),
                              border: InputBorder.none,
                            ),
                            
                          ),
                         ),
                         SizedBox(height: 15,),
                         GestureDetector(
                           onTap:(){
Navigator.push(context, MaterialPageRoute(builder: (Context)=>SelectType()));
                           },
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Text("Forget Password",
                                style:TextStyle(
                                  fontSize: 15,
                                color: AppColors.appColor,
                                fontWeight: FontWeight.w400,
                                ),
                               ),
                             ],
                           ),
                         ),
                          GestureDetector(
               onTap: (){
                 // Navigator.push(context, MaterialPageRoute(builder: (Context)=>HomePage()));
               },
               child: Container(
                             margin: EdgeInsets.symmetric(vertical: 25),
                             padding: EdgeInsets.symmetric(vertical: 15),
                             decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:AppColors.appColor,
                
                  ),
                             child: Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                             ),
                           ),
             ),
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Image(
                          image: AssetImage("assets/images/Group 465.png")))
                ],
              )),
               Positioned(
                 top: -100,
                 left: 0,
                 right: 0,
                 child: Image(
                      image: AssetImage("assets/images/743007.png"),
                    ),
               ),
        ],
      ),
    );
  }
}
