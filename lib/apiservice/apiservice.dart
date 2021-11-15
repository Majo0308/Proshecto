import 'package:http/http.dart';
import 'dart:convert';

class ServiceApi {
  static Future<Map> postCreateUser(
      String nombre, String contra, int edad, String carnet) async {
    String url =
        'https://backend-proyecto-evento.azurewebsites.net/api/Usuarios';
    Response response = await post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "nombre": nombre,
        "contraseña": contra,
        "edad": edad,
        "carnet": carnet
      }),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio");
      return jsonDecode(response.body);
    }
    throw Exception(
        "Error llamando API - Status " + response.statusCode.toString());
  }

  static Future<bool> verifyUserAccount(String nombre, String contra) async {
    String url =
        'https://backend-proyecto-evento.azurewebsites.net/api/Usuarios';
    Response response = await post(
      Uri.parse(url),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      List datos = jsonDecode(response.body);

      for (int i = 0; i < datos.length; i++) {}
    }

    throw Exception(
        "Error llamando API - Status " + response.statusCode.toString());
  }

  static Future<Map> postCreateEvento(
      String tematica, String descripcion, String fecha, String telefono,String direccion, int precio, int usuarioId,) async {
    String url =
        'https://backend-proyecto-evento.azurewebsites.net/api/Eventos';
    Response response = await post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "tematica": tematica,
        "descripcion": descripcion,
        "fecha": fecha,
        "telefono": telefono,
        "direccion":direccion,
        "precio" :precio,
        "usuarioId":usuarioId,
      }),
    );

    if (response.statusCode == 200 ||
        response.statusCode == 201 ||
        response.statusCode == 204) {
      print("Sirvio crear evento");
      return jsonDecode(response.body);
    }
    throw Exception(
        "Error llamando API - Status " + response.statusCode.toString());
  }
}
