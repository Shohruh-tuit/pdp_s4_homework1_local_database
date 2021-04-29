import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pdp_s4_homework_local_database/models/user_model.dart';
import 'package:pdp_s4_homework_local_database/pages/account_page.dart';
import 'package:pdp_s4_homework_local_database/services/db_service.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  void _doLogin() {
    String username = userNameController.text.toString().trim();
    String password = passwordController.text.toString().trim();

    var user = new User(username: username, password: password);

    HiveDB().storeUser(user);

    var user2 = HiveDB().loadUser(user);

    print(user2.username);
    print(user2.password);
  }

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
                Center(
                  child: Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: DecorationImage(
                        image: AssetImage("assets/images/user1.png"),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Column(
                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Sign in to continue",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                TextField(
                  controller: userNameController,
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
                  controller: passwordController,
                  style: TextStyle(color: Colors.white),
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
                SizedBox(height: 30),
                Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey[400]),
                ),
                SizedBox(height: 30),
                GestureDetector(
                  onTap: _doLogin,
                  child: Container(
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
                ),
                SizedBox(height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't hava an account?",
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AccountPage.id);
                      },
                      child: Text(
                        " SIGN UP ",
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
