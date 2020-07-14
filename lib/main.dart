import 'package:flutter/material.dart';
import 'home.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firestore.instance
      .collection('usuarios')
      .document('001')
      .setData({'nome': 'Wagner'});

  runApp(
    MaterialApp(
      title: 'Projeto clone whatsapp',
      home: Home(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
