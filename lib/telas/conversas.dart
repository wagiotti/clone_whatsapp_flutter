import 'package:flutter/material.dart';

class Conversas extends StatefulWidget {
  @override
  _ConversasState createState() => _ConversasState();
}

class _ConversasState extends State<Conversas> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          top: 21,
          left: 16,
        ),
        child: Text('Tela de Conversas'),
      ),
    );
  }
}
