import 'package:flutter/material.dart';

pushTo(BuildContext context, Widget newPage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => newPage));
}

pushWithReplacement(BuildContext context, Widget newPage) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => newPage),
  );
}

pushandremoveuntil(BuildContext context, Widget newPage) {
  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => newPage),
  (Route<dynamic> route) => false,);

}
