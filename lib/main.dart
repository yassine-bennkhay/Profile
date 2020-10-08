
import 'package:flutter/material.dart';

import 'profile_1.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter UI',
      theme: ThemeData(
        primaryColor: Colors.blue,
fontFamily: 'Myfont1'
      ),
      debugShowCheckedModeBanner: false,
      home: Profile(),
    );
  }
}
