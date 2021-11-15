// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UserApp',
      home: Home(),
      
    );
  }
}

class Home extends StatefulWidget {
  const Home({ Key key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController tematicaController = TextEditingController();
  TextEditingController descripcionController = TextEditingController();
  TextEditingController fechaController = TextEditingController();
  TextEditingController telefonoController = TextEditingController();
  TextEditingController precioController = TextEditingController();
 
  Map informacionEvento;
 final String url = 'https://backend-proyecto-evento.azurewebsites.net/api/Eventos/';
  
  Future<void> getData(int id) async {
    final response = await http.get(Uri.parse(url + id.toString()), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      setState(() {
      },); 

    } else {
      throw Exception('Error al llamar al API');
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Center(child: Text('Asistir a Evento'))
          ],
        ),
      ),
      body: Container(
        color: Colors.black,
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          children: [
            
            TextFormField(
                controller: idController,
                decoration: InputDecoration(hintText: "Ingresar id:")),
            ElevatedButton(
                child: Text('Obtener informacion'),
                onPressed: () {
                  getData(int.parse(idController.text));
                }),
            Container(child: Divider()),
            
            TextFormField(
                controller: usernameController,
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "username:", border: InputBorder.none)),
            TextFormField(
                controller: emailController,
                readOnly: true,
                decoration: InputDecoration(
                    hintText: "email:", border: InputBorder.none)),
            Container(child: Divider()),
            Text('Address:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            TextFormField(
              controller: tematicaController,
              readOnly: true,
              decoration:
                  InputDecoration(hintText: "street:", border: InputBorder.none),
            ),
            TextFormField(
              controller: descripcionController,
              readOnly: true,
              decoration:
                  InputDecoration(hintText: "suite:", border: InputBorder.none),
            ),
            TextFormField(
              controller: fechaController,
              readOnly: true,
              decoration:
                  InputDecoration(hintText: "city:", border: InputBorder.none),
            ),
            TextFormField(
              controller: telefonoController,
              readOnly: true,
              decoration:
                  InputDecoration(hintText: "zipcode:", border: InputBorder.none),
            ),
            Container(child: Divider()),
            Text('Geo:',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            TextFormField(
              controller: precioController,
              readOnly: true,
              decoration:
                  InputDecoration(hintText: "lat:", border: InputBorder.none),
            ),
           
  
            Container(child: Divider()),
          
          ],
        ),
      ),  
    );
  }
}