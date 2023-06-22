import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'TelaRegistro.dart';
import 'controle.dart';
import 'Configuracoes.dart';

class TelaLogin extends StatefulWidget {
  @override
  _TelaLoginState createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _userRef = FirebaseDatabase.instance.reference().child('users');
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _senhaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191414), // Fundo preto
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.network(
                    'https://cdn-icons-png.flaticon.com/512/715/715336.'
                        'png?w=826&t=st=1682267076~exp=1682267676~hmac=9eba00ccf24cd246cea98f410b878d5c60e581c042fe4ca82e06c95b08145938',
                    height: 150,
                  ),
                  SizedBox(height: 48.0),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Color(0xFF282828),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, digite seu e-mail';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16.0),
                  TextFormField(
                    controller: _senhaController,
                    obscureText: !_isPasswordVisible,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      labelText: 'Senha',
                      labelStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Color(0xFF282828),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xFF1DB954),
                        ),
                        onPressed: () {
                          setState(() {
                            _isPasswordVisible = !_isPasswordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Por favor, digite sua senha';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        loginUser();
                      }
                    },
                    child: Text(
                      'ENTRAR',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF1DB954), // Botão verde
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    'Não tem uma conta? Crie uma aqui',
                    style: TextStyle(color: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => TelaRegistro()),
                      );
                    },
                    child: Text(
                      'CRIE SUA CONTA',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Botão branco
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Configuracoes()),
                      );
                    },
                    child: Text(
                      'CONFIGURAÇÕES',
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white, // Botão branco
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> loginUser() async {
    try {
      _userRef
          .orderByChild('email')
          .equalTo(_emailController.text)
          .onValue
          .listen((event) {
        final users = event.snapshot.value as Map<dynamic, dynamic>?;
        if (users != null) {
          final user = users.values.first;
          if (user['password'] == _senhaController.text) {
            // Successful login
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RemoteControl()),
            );
          } else {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: Text('Authentication Error'),
                content: Text('Incorrect password. Please try again.'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          }
        } else {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Authentication Error'),
              content: Text('No account associated with this email.'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('OK'),
                ),
              ],
            ),
          );
        }
      });
    } catch (error) {
      print('Failed to log in: $error');
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Authentication Error'),
          content: Text(
              'An error occurred while trying to log in. Please try again later.'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
