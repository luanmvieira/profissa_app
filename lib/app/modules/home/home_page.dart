import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:profissa_app/app/modules/home/home_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
    );
  }
}