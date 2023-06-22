import 'package:flutter/material.dart';
import 'ListaDispositivos.dart';
import 'TelaAjuda.dart';
import 'telaInfo.dart';

class Configuracoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF191414),
      appBar: AppBar(
        backgroundColor: Color(0xFF1DB954),
        title: Text('Configurações'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Flexible(
              child: ElevatedButton(
                onPressed: () {
                  // Navegar para a opção 2 (Lista de dispositivos)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ListaDispositivos(),
                    ),
                  );
                },
                child: Text(
                  'Lista de Dispositivos',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1DB954), // Botão verde
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Flexible(
              child: ElevatedButton(
                onPressed: () {
                  // Navegar para a opção 6 (Ajuda e Informações)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaAjuda(),
                    ),
                  );
                },
                child: Text(
                  'Ajuda e Informações',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1DB954), // Botão verde
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Flexible(
              child: ElevatedButton(
                onPressed: () {
                  // Navegar para a opção 6 (Ajuda e Informações)
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TelaInfo(),
                    ),
                  );
                },
                child: Text(
                  'Sobre o aplicativo',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF1DB954), // Botão verde
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
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
