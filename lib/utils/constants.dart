import 'package:flutter/material.dart';

const Color kPrimaryColor = Color(0xFFFFD800);
const Color kBackgroundColor = Color.fromRGBO(7, 17, 26, 1);
const Color kDangerColor = Color.fromARGB(255, 243, 22, 22);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;

double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

class AppConstants {
  static const _assets = "assets/";

  static const _images = _assets + "images/";

  static const _techImages = _images + "technology/";
  static const flutterImage = _techImages + "flutter.png";
  static const phpImage = _techImages + "php.png";
  static const firebaseImage = _techImages + "firebase.png";
  static const swiftImage = _techImages + "swift.png";
  static const javascriptImage = _techImages + "javascript.png";
  static const golangImage = _techImages + "golang.png";
  static const rubyImage = _techImages + "ruby.png";
}
