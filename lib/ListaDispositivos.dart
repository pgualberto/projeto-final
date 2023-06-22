import 'package:flutter/material.dart';

class ListaDispositivos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1DB954),
        title: Text('Dispositivos Suportados'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(
              'LG OLED65C1PUB',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 1
            },
          ),
          ListTile(
            title: Text(
              'LG NanoCell 85 Series 4K',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 2
            },
          ),
          ListTile(
            title: Text(
              'LG UN7300 Series 4K',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 1
            },
          ),
          ListTile(
            title: Text(
              'LG BX Series OLED',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 1
            },
          ),
          ListTile(
            title: Text(
              'LG NANO90 Series 4K',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 1
            },
          ),
          ListTile(
            title: Text(
              'LG CX Series OLED',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 1
            },
          ),
          ListTile(
            title: Text(
              'LG UHD 70 Series',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 1
            },
          ),
          ListTile(
            title: Text(
              'LG C9 Series OLED',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 1
            },
          ),
          ListTile(
            title: Text(
              'LG NANO81 Series 4K',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 1
            },
          ),
          ListTile(
            title: Text(
              'LG GX Series OLE',
              style: TextStyle(
                fontSize: 18, // Tamanho da letra aumentado para 18
                color: Colors.white, // Cor da letra alterada para branco
              ),
            ),
            onTap: () {
              // Lógica para lidar com a seleção do Dispositivo 3
            },
          ),
          // Adicione mais ListTiles conforme necessário
        ],
      ),
    );
  }
}
