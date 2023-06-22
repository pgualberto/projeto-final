import 'package:flutter/material.dart';
import 'Tela_login.dart';
import 'telaInfo.dart';

void main() {
  runApp(WelcomePage());
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Page',
      theme: ThemeData(
        primarySwatch: Colors.green, // Define a cor primária como verde
        scaffoldBackgroundColor: Color(0xFF191414), // Define a cor de fundo como preto
      ),
      routes: {
        '/': (context) => WelcomeScreen(),
        '/acesso': (context) => TelaLogin(),
        '/sobre_o_app': (context) => TelaInfo(), // Adicione a rota para a tela "TelaInfo"
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bem-vindo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bem-vindos ao nosso Controle', // Adicione a mensagem de boas-vindas
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white, // Define a cor do texto como branco
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200, // Defina uma largura fixa para os botões
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/acesso');
                },
                child: Text('Acesso'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1DB954), // Defina a cor do botão como verde
                  onPrimary: Colors.black, // Defina a cor do texto como preto
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Define o raio do botão
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 200, // Defina uma largura fixa para os botões
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sobre_o_app');
                },
                child: Text('Sobre o app'),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1DB954), // Defina a cor do botão como verde
                  onPrimary: Colors.black, // Defina a cor do texto como preto
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0), // Define o raio do botão
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
