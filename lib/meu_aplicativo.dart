import 'package:flutter/material.dart';
import 'package:flutter_auth/widgets/auth_check_dart.dart';

class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.indigo
      ),
      home: AuthCheck(),
    );
  }
}
