

import 'package:flutter/material.dart';
import 'package:proyecto_final/features/auth/services/auth_service.dart';
import 'package:proyecto_final/features/home/screens/home_screen.dart';

import 'package:proyecto_final/features/auth/widgets/custom_login_text_field.dart';
class LoginScreen extends StatefulWidget {

  const LoginScreen ({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{
final TextEditingController _usernameController = TextEditingController(text: "emilys");
final TextEditingController _passwordController = TextEditingController(text: "emilyspass");

final AuthService _authService = AuthService();
bool _isLoading = false;

void _iniciarSesion() async{
setState(() {
  _isLoading = true;

});

bool success = await _authService.login(_usernameController.text, _passwordController.text);


if(!mounted) return;

setState(() {
  _isLoading = false;
});

if(success){

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text("Inicio de sesión exitoso")));

  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> MyHomePage()));
}else{

ScaffoldMessenger.of(context).showSnackBar(
  SnackBar(content: Text("Error al iniciar sesión"), backgroundColor: Colors.red,)
);
}

}

@override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Aplicacion',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 40,),
              CustomLoginTextField(controller: _usernameController, label: "usuario"),
              const SizedBox(height:16 ,),
              CustomLoginTextField(controller: _passwordController, label: "contraseña"),
              const SizedBox(height:32 ,),

              _isLoading ?
                Center(
                  child: CircularProgressIndicator()):
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                       padding: EdgeInsets.symmetric(vertical: 16), 
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
                    ),
                   
                    onPressed: _iniciarSesion,
                     child: Text("iniciar sesion"))
            ],
          ),
          )
        ),
    );
  }

}