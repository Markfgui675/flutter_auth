import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth/services/auth_services.dart';
import 'package:provider/provider.dart';
import 'meu_aplicativo.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await HiveConfig.start();
  await Firebase.initializeApp();

  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => AuthService())
        ],
        child: MeuAplicativo(),
    )
  );
}

