import 'package:clone_whatsapp/model/conversa.dart';
import 'package:flutter/material.dart';

class Contatos extends StatefulWidget {
  @override
  _ContatosState createState() => _ContatosState();
}

class _ContatosState extends State<Contatos> {
  @override
  List<Conversa> listaConversas = [
    Conversa(
      'Tamires',
      'Conseguiu terminar o desafio do App?',
      'https://firebasestorage.googleapis.com/v0/b/clone-whatsapp-projeto.appspot.com/o/perfil%2Fperfil1.jpg?alt=media&token=39d29c3c-843a-4711-86a7-c13d361a541f',
    ),
    Conversa(
      'Cristovão',
      'Será que dá pra desenvolver em node?',
      'https://firebasestorage.googleapis.com/v0/b/clone-whatsapp-projeto.appspot.com/o/perfil%2Fperfil2.jpg?alt=media&token=6ad8bcb6-2d03-4a56-bd16-ee2aeef48df5',
    ),
    Conversa(
      'Luiza',
      'Vou terminar aqui e te aviso.',
      'https://firebasestorage.googleapis.com/v0/b/clone-whatsapp-projeto.appspot.com/o/perfil%2Fperfil3.jpg?alt=media&token=857ee5ee-b1eb-4443-a5d8-a365717d5303',
    ),
    Conversa(
      'Caio',
      'To usando Css3 puro mesmo.',
      'https://firebasestorage.googleapis.com/v0/b/clone-whatsapp-projeto.appspot.com/o/perfil%2Fperfil4.jpg?alt=media&token=b5402c8c-c2c3-4bf7-ade1-a9a4f583f462',
    ),
    Conversa(
      'Jamilton',
      'Termino as aulas ainda essa semana',
      'https://firebasestorage.googleapis.com/v0/b/clone-whatsapp-projeto.appspot.com/o/perfil%2Fperfil5.jpg?alt=media&token=5712c9ff-6a80-478b-8622-6bfaacc4f757',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listaConversas.length,
      itemBuilder: (context, index) {
        Conversa conversa = listaConversas[index];

        return ListTile(
          contentPadding: EdgeInsets.fromLTRB(16, 8, 16, 8),
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(conversa.caminhoFoto),
          ),
          title: Text(
            conversa.nome,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        );
      },
    );
  }
}
