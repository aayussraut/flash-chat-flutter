<<<<<<< HEAD
import 'package:flash_chat/rounded_button.dart';
import 'package:flash_chat/screens/login_screen.dart';
import 'package:flash_chat/screens/registration_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

=======
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

<<<<<<< HEAD
class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
        .animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {
        print(animation.value);
      });
    });
//
//    @override
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
=======
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
<<<<<<< HEAD
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('images/logo.png'),
                    height: 60.0,
                  ),
                ),
                TyperAnimatedTextKit(
                  text: ['Flash Chat'],
                  textStyle: TextStyle(
=======
                Container(
                  child: Image.asset('images/logo.png'),
                  height: 60.0,
                ),
                Text(
                  'Flash Chat',
                  style: TextStyle(
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
                    fontSize: 45.0,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
<<<<<<< HEAD
            PaddingClass(
              color: Colors.lightBlueAccent,
              text: 'Log In',
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.id);
              },
            ),
            PaddingClass(
              color: Colors.blueAccent,
              text: 'Register',
              onTap: () {
                Navigator.pushNamed(context, RegistrationScreen.id);
              },
=======
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                elevation: 5.0,
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(30.0),
                child: MaterialButton(
                  onPressed: () {
                    //Go to login screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Log In',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(30.0),
                elevation: 5.0,
                child: MaterialButton(
                  onPressed: () {
                    //Go to registration screen.
                  },
                  minWidth: 200.0,
                  height: 42.0,
                  child: Text(
                    'Register',
                  ),
                ),
              ),
>>>>>>> 53b2d50a03d9901e92afed06fdb76bee6e348629
            ),
          ],
        ),
      ),
    );
  }
}
