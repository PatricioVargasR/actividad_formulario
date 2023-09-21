import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  LandingPage({super.key, required this.userName,
                          required this.userApellidop,
                          required this.userApellidom,
                          required this.userTelefono,
                          required this.userEmail,
                          required this.userEdad
  });
  final String userName;
  final String userApellidop;
  final String userApellidom;
  final String userTelefono;
  final String userEmail;
  final String userEdad;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Datos enviados",
            style: TextStyle(color: Colors.yellowAccent)),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50,
          ),
          const Center(
              child: Text(
                "Data page",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.redAccent),
              )),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text( "Bienvenido ${widget.userName}, verifique sus datos:",
                    style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent)),
                Text("Apellidos Paterno: ${widget.userApellidop}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent)),
                Text("Apellido Materno: ${widget.userApellidom} ",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent)),
                Text("Teléfono: ${widget.userTelefono}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent)),
                Text("Email: ${widget.userEmail}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent)),
                Text("Edad: ${widget.userEdad}",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent)),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
          child: const Text("Logout"),
          ),
        ],
      )
    );
  }
}
