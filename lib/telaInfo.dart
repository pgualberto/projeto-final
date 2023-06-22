import 'package:flutter/material.dart';
import 'boasvindas.dart';

class TelaInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1DB954),
        title: Text('Sobre'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '',
                  style: TextStyle(
                    fontSize: 24.0, // Aumenta o tamanho da fonte para 24
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Altera a cor do texto para branco
                  ),
                ),
                SizedBox(height: 8.0),
                Flexible(
                  child: Text(
                    "Bem-vindo(a) à página de informações do aplicativo, desenvolvido por alunos da PUC Minas, na disciplina de LDDM (Laboratório de Desenvolvimento de Dispositivos Móveis), sob a orientação da professora Isabela Borlido.\n\nA configuração inicial do aplicativo é simples e rápida. Basta selecionar o tipo de dispositivo que deseja controlar.\n\nEste projeto foi desenvolvido com dedicação e foco, como parte da matéria de LDDM. As orientações da professora foram fundamentais para o desenvolvimento.\n\nAgradecemos a todos os envolvidos por seu esforço na criação deste aplicativo. Esperamos que ele atenda às suas necessidades e ofereça uma experiência agradável.\n\nEquipe de Desenvolvimento\nPUC Minas, Engenharia de Computação",
                    style: TextStyle(
                      fontSize: 18.0, // Aumenta o tamanho da fonte para 18
                      color: Colors.white, // Altera a cor do texto para branco
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
