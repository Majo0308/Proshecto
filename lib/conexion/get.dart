import 'package:http/http.dart';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:http/http.dart' as http;

class ServiceApi {
  static Future<Map> postCreateRegistro(int tipo, String etiqueta, String descripcion, int monto) async {
    String url = 'https://contamales.azurewebsites.net/api/Registros';
    Response response = await post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({"tipo": tipo, "etiqueta": etiqueta, "descripcion":descripcion, "monto": monto}),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio");
      return jsonDecode(response.body);
    }
    throw Exception(
        "Error llamando API - Sttus " + response.statusCode.toString());
  }


}
class InformacionEventoWidget extends StatelessWidget {
  const InformacionEventoWidget(
      {Key key,
      this.tipo,
      this.etiqueta,
      this.descripcion,
      this.monto})
      : super(key: key);
  final int tipo;
  final String etiqueta;
  final String descripcion;
  final int monto;

  @override
  Widget build(BuildContext context) {
    return ListView(
      
      padding: const EdgeInsets.only(left: 20, right: 20),
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      children: [
        Padding(
          
          padding: const EdgeInsets.only(top: 20.0),
          child: Container(
            alignment: Alignment.center,
            color: Colors.orange,
            width: 300,
            padding: const EdgeInsets.all(5.0),
            margin: const EdgeInsets.all(0.0),
            child: Text(tipo.toString()),
          ),
        ),
        Container(
          color: Colors.amber,
          alignment: Alignment.center,
          width: 300,
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(etiqueta),
        ),
        Container(
          color: Colors.amber[300],
          alignment: Alignment.center,
          width: 300,
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(descripcion),
        ),
        Container(
          color: Colors.amber[100],
          alignment: Alignment.center,
          width: 300,
          padding: const EdgeInsets.all(5.0),
          margin: const EdgeInsets.all(0.0),
          child: Text(monto.toString()),
        ),
      ],
    );
  }
}

class Relevancia_get extends StatefulWidget {
  const Relevancia_get({Key key}) : super(key: key);

  @override
  _Relevancia_getState createState() => _Relevancia_getState();
}

class _Relevancia_getState extends State<Relevancia_get> {
  List widgetsListView = [];
  int i = 0;
  //final String url =
  //  'https://apiagenda120211108203647.azurewebsites.net/api/Relevancias/';
  final String url = "https://contamales.azurewebsites.net/api/Registros";
  Future<List<dynamic>> getData() async {
    final response = await http.get(Uri.parse(url), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      List<dynamic> resultados=[]; 
      for(int i=0; i<jsonData.length; i++) {
          if( jsonData[i]["tipo"] == 1){
            resultados.add(jsonData[i]);
          }
      }
      return resultados;
      
    } else {
      throw Exception('Error al llamar al API');
    }
  }

  Future<List> getLista(String relevancia) async {
    final response = await http.get(Uri.parse(url + relevancia), headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    });
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      return jsonData;
    } else {
      throw Exception('Error al llamar al API');
    }
  }

  bool vacio = false;
  int lim = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("MOSTRAR POR RELEVANCIA"),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 0.8,
        child: ListView(
          shrinkWrap: true,
          children: [
            ElevatedButton(
              child: const Text('Siguiente'),
              onPressed: () async {
                print("queso");
               
                //Map post1= await ServiceApi.postCreateUser("si", "no");
                List<dynamic> datos = await getData();
                print("Api Sirvio");
                print(datos);
                setState(() {
                  
                  widgetsListView = datos;
                });
              },
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: ClampingScrollPhysics(),
              itemCount: widgetsListView.length,
              itemBuilder: (BuildContext ctxt, int idx) {
                
                return InformacionEventoWidget(
                    
                    tipo: widgetsListView[idx]["tipo"],
                    etiqueta: widgetsListView[idx]["etiqueta"],
                    descripcion: widgetsListView[idx]["descripcion"],
                    monto: widgetsListView[idx]["monto"]);
              },
            )
          ],

        ),
      ),
    );
  }
}
