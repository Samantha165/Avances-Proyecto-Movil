

import 'package:flutter/material.dart';
import 'package:proyecto_final/core/storage/local_storage_service.dart';
import 'package:proyecto_final/features/auth/screens/login_screen.dart';
import 'package:proyecto_final/features/home/screens/home_screen.dart';

class AuthCheckScreen extends StatefulWidget{

const AuthCheckScreen({super.key});

@override
  State<StatefulWidget> createState() => _AuthCheckScreenState();


}

class _AuthCheckScreenState extends State <StatefulWidget>{
  final LocalStorageService _storage = LocalStorageService();

@override
  void initState(){
    super.initState();
    _checkToken();
  }

Future <void> _checkToken() async{
  final token = await _storage.getToken();

  if(!mounted) return;

  if(token != null && token.isNotEmpty){

    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context)=> MyHomePage() ));
  }else{

    Navigator.pushReplacement(context, 
    MaterialPageRoute(builder: (context)=> LoginScreen() ));

  }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: CircularProgressIndicator(),
      ),

    );
    
  }
}