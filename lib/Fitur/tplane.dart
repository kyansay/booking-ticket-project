// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class planeTicket extends StatefulWidget {
const planeTicket({Key? key}) : super(key: key);

@override
State<planeTicket> createState() => _planeTicketState();
}

class _planeTicketState extends State<planeTicket> {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text("Dashboard"),
actions: const [],
),
body: SingleChildScrollView(
child: Container(
padding: const EdgeInsets.all(10.0),
child: Column(
children: [],
),
),
),
);
}
}
