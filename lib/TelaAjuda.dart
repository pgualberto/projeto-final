import 'package:flutter/material.dart';

class TelaAjuda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1DB954),
        title: Text('Ajuda e Informações'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Perguntas Frequentes:',
              style: TextStyle(
                fontSize: 24.0, // Aumenta o tamanho da fonte para 24
                fontWeight: FontWeight.bold,
                color: Colors.white, // Altera a cor do texto para branco
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Como configurar o controle remoto infravermelho?',
              style: TextStyle(
                fontSize: 18.0, // Define o tamanho da fonte como 18
                color: Colors.white, // Altera a cor do texto para branco
              ),
            ),
            Text(
              '2. Como utilizar um novo dispositivo suportado?',
              style: TextStyle(
                fontSize: 18.0, // Define o tamanho da fonte como 18
                color: Colors.white, // Altera a cor do texto para branco
              ),
            ),
            Text(
              '3. Posso utilizar o controle sem realizar login?',
              style: TextStyle(
                fontSize: 18.0, // Define o tamanho da fonte como 18
                color: Colors.white, // Altera a cor do texto para branco
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Dicas para Solução de Problemas:',
              style: TextStyle(
                fontSize: 24.0, // Aumenta o tamanho da fonte para 24
                fontWeight: FontWeight.bold,
                color: Colors.white, // Altera a cor do texto para branco
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '1. Verifique se o seu dispositivo possui suporte infravermelho. Após, basta utlilizar o app.',
              style: TextStyle(
                fontSize: 18.0, // Define o tamanho da fonte como 18
                color: Colors.white, // Altera a cor do texto para branco
              ),
            ),
            Text(
              '2. Certifique-se de que o seu dispositivo esteja em linha reta com o dispositivo alvo.',
              style: TextStyle(
                fontSize: 18.0, // Define o tamanho da fonte como 18
                color: Colors.white, // Altera a cor do texto para branco
              ),
            ),
            Text(
              '3. Não. Buscando o evitar inconveniências envolvendo o uso do aplicativo em ambientes educacionais e públicos, o uso do aplicativo é restrito para usuários logados e com permissão para interagir com o dispositivo selecionado (consulte a fabricante do dispositivo, para gerenciar as permissões.',
              style: TextStyle(
                fontSize: 18.0, // Define o tamanho da fonte como 18
                color: Colors.white, // Altera a cor do texto para branco
              ),
            ),
          ],
        ),
      ),
    );
  }
}
