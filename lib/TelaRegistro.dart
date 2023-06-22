import 'dart:math';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:projetocontrole1/Tela_login.dart';
import 'main.dart';
import 'Dispositivos.dart';
import 'controle.dart';

class TelaRegistro extends StatefulWidget {
  @override
  _TelaRegistroState createState() => _TelaRegistroState();
}

final _userRef = FirebaseDatabase.instance.reference().child('users');

class _TelaRegistroState extends State<TelaRegistro> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _emailController = TextEditingController();
  final _senhaController = TextEditingController();
  final _confirmacaoSenhaController = TextEditingController();
  bool _obscureSenha = true;
  bool _obscureConfirmacaoSenha = true;

  @override
  void dispose() {
    _nomeController.dispose();
    _emailController.dispose();
    _senhaController.dispose();
    _confirmacaoSenhaController.dispose();
    super.dispose();
  }

  void _concluirRegistro() {
    if (_formKey.currentState!.validate()) {
      saveUser();

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => TelaLogin()),
      );
    }
  }

  Future<void> saveUser() async {
    try {
      await _userRef.push().set({
        'username': _nomeController.text,
        'email': _emailController.text,
        'password': _senhaController.text,
      });
      print('Usuário salvo com sucesso');
    } catch (error) {
      print('Falha ao salvar o usuário: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Color(0xFF191414), // Altera a cor de fundo
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Criar uma nova conta',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _nomeController,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Nome',
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
                          return 'Por favor, digite seu nome';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
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
                        } else if (!isEmailValid(value)) {
                          return 'E-mail inválido';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _senhaController,
                      obscureText: _obscureSenha,
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
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureSenha = !_obscureSenha;
                            });
                          },
                          icon: Icon(
                            _obscureSenha
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xFF1DB954),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, digite sua senha';
                        } else if (!isPasswordValid(value)) {
                          return 'Senha inválida. Deve conter pelo menos uma letra maiúscula, uma letra minúscula, um número e um caractere especial.';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      controller: _confirmacaoSenhaController,
                      obscureText: _obscureConfirmacaoSenha,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        labelText: 'Confirmação de senha',
                        labelStyle: TextStyle(color: Colors.white),
                        filled: true,
                        fillColor: Color(0xFF282828),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              _obscureConfirmacaoSenha =
                              !_obscureConfirmacaoSenha;
                            });
                          },
                          icon: Icon(
                            _obscureConfirmacaoSenha
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xFF1DB954),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor, confirme sua senha';
                        } else if (value != _senhaController.text) {
                          return 'As senhas não coincidem';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: _concluirRegistro,
                      child: Text('Concluir'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1DB954),
                        onPrimary: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

bool isEmailValid(String email) {
  // Verifica se o e-mail fornecido segue um formato válido de endereço de e-mail
  // Você pode usar uma expressão regular ou uma biblioteca de validação de e-mail para essa verificação
  // Usando uma expressão regular simples
  return RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(email);
}

bool isPasswordValid(String password) {
  // Verifica se a senha fornecida atende aos requisitos de complexidade
  // Você pode implementar sua própria lógica aqui, como verificar a presença de letras maiúsculas, letras minúsculas, números e caracteres especiais na senha
  // Usando expressões regulares para verificar a presença desses requisitos
  final hasUppercase = RegExp(r'[A-Z]').hasMatch(password);
  final hasLowercase = RegExp(r'[a-z]').hasMatch(password);
  final hasDigit = RegExp(r'\d').hasMatch(password);
  final hasSpecialChar = RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(password);
  return hasUppercase && hasLowercase && hasDigit && hasSpecialChar;
}
