import 'package:flutter/material.dart';

class TvScreen01 extends StatefulWidget {
  @override
  _TvScreen01State createState() => _TvScreen01State();
}

class _TvScreen01State extends State<TvScreen01> {
  String _message = '';

  void _sendMessage(String message) {
    setState(() {
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Controle LG'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff1c1c1c),
              Color(0xff424242),
            ],
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () => _sendMessage('Botão de ligar'),
                    icon: Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                  IconButton(
                    onPressed: () => _sendMessage('Botão de volume +'),
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                  IconButton(
                    onPressed: () => _sendMessage('Botão de volume -'),
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                  IconButton(
                    onPressed: () => _sendMessage('Botão de menu'),
                    icon: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => _sendMessage('Botão de navegação para cima'),
                      icon: Icon(
                        Icons.keyboard_arrow_up,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => _sendMessage('Botão de navegação para a esquerda'),
                          icon: Icon(
                            Icons.keyboard_arrow_left,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        SizedBox(width: 16),
                        IconButton(
                          onPressed: () => _sendMessage('Botão de confirmar'),
                          icon: Icon(
                            Icons.check_circle,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        SizedBox(width: 16),
                        IconButton(
                          onPressed: () => _sendMessage('Botão de navegação para a direita'),
                          icon: Icon(
                            Icons.keyboard_arrow_right,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () => _sendMessage('Botão de navegação para baixo'),
                      icon: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 48,
                      ),
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () => _sendMessage('Botão de aumentar canal'),
                          icon: Icon(
                            Icons.add_circle_outline,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        IconButton(
                          onPressed: () => _sendMessage('Botão play/pause'),
                          icon: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        IconButton(
                          onPressed: () => _sendMessage('Botão de diminuir canal'),
                          icon: Icon(
                            Icons.remove_circle_outline,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () => _sendMessage('Botão Home'),
                          icon: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        IconButton(
                          onPressed: () => _sendMessage('Botão de mutar'),
                          icon: Icon(
                            Icons.volume_off,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        IconButton(
                          onPressed: () => _sendMessage('Botão Voltar'),
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () => _sendMessage('Botão Netflix'),
                          icon: Icon(
                            Icons.tv,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        IconButton(
                          onPressed: () => _sendMessage('Botão Amazon Prime'),
                          icon: Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                        IconButton(
                          onPressed: () => _sendMessage('Botão Movie'),
                          icon: Icon(
                            Icons.local_movies,
                            color: Colors.white,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              'Último comando: $_message',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

