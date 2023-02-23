// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';

class NewReservationView extends StatelessWidget {
  const NewReservationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formState = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formState,
        child: ListView(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  labelText: "Isminiz",
                  hintText: "Isim",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            const SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  labelText: "Reservation Date",
                  hintText: "",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue))),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(onPressed: () async {}, icon: const Icon(Icons.send)),
          ],
        ),
      ),
    );
  }
}
