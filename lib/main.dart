import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providertask1/frontpage.dart';
import 'package:providertask1/providercls.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context)=>Providercl(),
      child: MaterialApp(
        home: Provider01()
      )));
}

