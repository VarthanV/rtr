import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var user;

  Future<FirebaseUser> googleSignIn() async {
    // Start
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    _auth.signInWithCredential(credential).then((userData) {
      user=userData.user.displayName;
      print(user);
      
    });
   

  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/auth.png"), fit: BoxFit.cover),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              top: 50,
              left: 22,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(
                        fontSize: 36,
                        decoration: TextDecoration.none,
                        fontFamily: "Poppins",
                        color: Color(0xFFFA883B),
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.36),
                  ),
                  Text(
                    "back!",
                    style: TextStyle(
                        fontSize: 36,
                        decoration: TextDecoration.none,
                        fontFamily: "Poppins",
                        color: Color(0xFFFA883B),
                        fontWeight: FontWeight.w400,
                        letterSpacing: 0.5),
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 30,
                child: Column(
                  children: <Widget>[
                    RaisedButton.icon(
                        color: Colors.white,
                        elevation: 4,
                        padding: EdgeInsets.fromLTRB(35, 15, 35, 15),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        onPressed: () {
                          googleSignIn();
                        },
                        icon: Image.asset("assets/google.png"),
                        label: Text(
                          "Sign in with Google",
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontFamily: "Poppins",
                              letterSpacing: 0.5,
                              fontWeight: FontWeight.w600),
                        )),
                    Container(
                        margin: EdgeInsets.only(top: 10),
                        child: RaisedButton(
                            color: Color.fromRGBO(255, 255, 255, 0.9),
                            elevation: 4,
                            padding: EdgeInsets.fromLTRB(60, 15, 60, 15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100)),
                            onPressed: () {},
                            child: Text(
                              "Sign in as Guest",
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontFamily: "Poppins",
                                  letterSpacing: 0.5,
                                  fontWeight: FontWeight.w600),
                            ))),
                  ],
                ))
          ],
        ));
  }
}
