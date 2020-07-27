import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String _dadosUsuarioLogado = '';

  Future _recuperaDadosDoUsuario() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    FirebaseUser usuarioLogado = await auth.currentUser();

    setState(() {
      _dadosUsuarioLogado = 'Bem vindo ao sistema ${usuarioLogado.email}';
    });
  }

  @override
  void initState() {
    _recuperaDadosDoUsuario();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(_dadosUsuarioLogado),
      ),
    );
  }
}
