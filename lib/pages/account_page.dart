import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:pdp_s4_homework_local_database/pages/home_page.dart';

class AccountPage extends StatefulWidget {
  static final String id = "account_page";

  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('1A1D37'),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(height: 100),
                Column(
                  children: [
                    Text(
                      "Create",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Account",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'User Name',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    icon: Icon(
                      FontAwesome.user_o,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'E-mail',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    icon: Icon(
                      FontAwesome.phone,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    icon: Icon(
                      FontAwesome.unlock_alt,
                      color: Colors.grey[400],
                    ),
                  ),
                ),
                SizedBox(height: 70),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.bottomLeft,
                        colors: [
                          Colors.blue[700],
                          Colors.blue[300],
                          Colors.blue[100]
                        ]),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already hava an account?",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, HomePage.id);
                      },
                      child: Text(
                        " SIGN IN ",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontSize: 16,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
