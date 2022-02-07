library flutter_library_npm;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/// A Calculator.
/*class Calculator {
  /// Returns [value] plus 1.
  int addOne(int value) => value + 1;
}*/
enum Buttons {
  Google,
  Facebook,
  Microsoft,
  LinkedIn,
  Twitter,
  GitHub,
  Apple,
  Email,
}

class SignInButton extends StatelessWidget {
  final Function onPressed;
  final Buttons button;
  final String text;
  final ShapeBorder shape;

  SignInButton(this.button, {required this.onPressed, required this.text,required this.shape})
      : assert(button != null),
        assert(onPressed != null);

  @override
  Widget build(BuildContext context) {
    switch (button) {
      case Buttons.Email:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,

          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape, image:  Image.asset('path/bat.jpeg'),
        );
      case Buttons.Google:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,

          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape, image:  Image.asset('path/bear.jpeg'),
        );
      case Buttons.Facebook:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,

          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape, image:  Image.asset('path/bat.jpeg'),
        );
      case Buttons.GitHub:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,

          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape, image:  Image.asset('path/bat.jpeg'),
        );
      case Buttons.Apple:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,

          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape, image:  Image.asset('path/bat.jpeg'),
        );
      case Buttons.LinkedIn:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,

          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape, image:  Image.asset('path/bat.jpeg'),
        );
      case Buttons.Microsoft:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,

          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape, image:  Image.asset('path/bat.jpeg'),
        );
      case Buttons.Twitter:
        return Btn(
          key: ValueKey("Email"),
          text: text ?? "Sign In With Email",
          icon: Icons.email,

          onPressed: onPressed,
          backgroundColor: Colors.white,
          textColor: Colors.black,
          iconColor: Colors.black,
          shape: shape, image:  Image.asset('path/bat.jpeg'),
        );
    }
  }
}

class Btn extends StatelessWidget {
  final Color textColor, backgroundColor, iconColor;
  final Function onPressed;
  final String text;
  final IconData icon;
  final Widget image;
  final ShapeBorder shape;
  Btn(
      {required Key key,
        required this.backgroundColor,
        required this.onPressed,
        required this.text,
        required this.icon,
        required this.textColor,
        required this.iconColor,
        required this.image,
        required this.shape});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      key: key,
      color: backgroundColor,
      shape:shape ?? ButtonTheme.of(context).shape,
      padding: const EdgeInsets.all(0),
      onPressed: () {

      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth: 220,
        ),
        child: Center(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 13,
                ),
                child: image!=null?image:Icon(
                  icon,
                  size: 20,
                  color: this.iconColor,
                ),
              ),
              Text(
                text,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  color: textColor,
                  fontSize: 14,
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
