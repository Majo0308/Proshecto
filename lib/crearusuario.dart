import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'apiservice/apiservice.dart';
import 'flutter_flow/flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class CrearUsuarioPagina extends StatefulWidget {
  const CrearUsuarioPagina({Key key}) : super(key: key);

  @override
  _CrearUsuarioPaginaState createState() => _CrearUsuarioPaginaState();
}

class _CrearUsuarioPaginaState extends State<CrearUsuarioPagina> {
  TextEditingController textControllerNombre;
  TextEditingController textControllerCarnet;
  TextEditingController textControllerContra;
  TextEditingController textControllerEdad;
  bool passwordVisibility;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  _dismissDialog() {
    Navigator.pop(context);
  }

  @override
  void initState() {
    super.initState();
    textControllerNombre = TextEditingController();
    textControllerCarnet = TextEditingController();
    textControllerContra = TextEditingController();
    textControllerEdad = TextEditingController();
    passwordVisibility = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF5F5F5),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFF2B1C5F),
        ),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFEEEEEE),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/fondito.jpg',
              ).image,
            ),
            shape: BoxShape.rectangle,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: const BoxDecoration(
                  color: Color(0x00EEEEEE),
                  shape: BoxShape.rectangle,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: const Color(0xFFEEEEEE),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/fondito.jpg',
                      ).image,
                    ),
                    shape: BoxShape.circle,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.1,
                decoration: const BoxDecoration(
                  color: Color(0x00EEEEEE),
                  shape: BoxShape.rectangle,
                ),
              ),
              Text(
                'Crear Usuario',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.title1.override(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: Colors.white,
                    fontFamily: 'Poppins'),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 35, 0, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    alignment: const AlignmentDirectional(0, 0),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        autofocus: false,
                        controller: textControllerNombre,
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 15),
                          hintText: 'Nombre',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF757575),
                            fontSize: 19,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.black,
                          prefixIcon: const Icon(
                            Icons.person,
                            color: Colors.white,
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    alignment: const AlignmentDirectional(0, 0),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        autofocus: false,
                        controller: textControllerCarnet,
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 15),
                          hintText: 'Carnet',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF757575),
                            fontSize: 19,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.black,
                          prefixIcon: const Icon(
                            Icons.air,
                            color: Colors.white,
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                      shape: BoxShape.rectangle,
                    ),
                    alignment: const AlignmentDirectional(0, 0),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        autofocus: false,
                        controller: textControllerContra,
                        obscureText: !passwordVisibility,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 15),
                          hintText: 'Contraseña',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 19,
                            color: const Color(0xFF757575),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.black,
                          prefixIcon: const Icon(
                            Icons.lock_rounded,
                            color: Colors.white,
                          ),
                          suffixIcon: InkWell(
                            onTap: () => setState(
                              () => passwordVisibility = !passwordVisibility,
                            ),
                            child: Icon(
                              passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              color: const Color(0xFF757575),
                              size: 22,
                            ),
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.065,
                    decoration: const BoxDecoration(color: Colors.transparent),
                    alignment: const AlignmentDirectional(0, 0),
                    child: Material(
                      elevation: 3,
                      borderRadius: BorderRadius.circular(20),
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        autofocus: false,
                        controller: textControllerEdad,
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.only(top: 15),
                          hintText: 'Edad',
                          hintStyle: FlutterFlowTheme.bodyText1.override(
                            fontFamily: 'Poppins',
                            color: const Color(0xFF757575),
                            fontSize: 19,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Color(0x00000000),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          filled: true,
                          fillColor: Colors.black,
                          prefixIcon: const Icon(
                            Icons.tag,
                            color: Colors.white,
                          ),
                        ),
                        style: FlutterFlowTheme.bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 19,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: FFButtonWidget(
                        onPressed: () async {

                          FocusScope.of(context).unfocus();
                          String nombre = textControllerNombre.text;
                          String carnet = textControllerCarnet.text;

                          String contra = textControllerContra.text;

                          String edadStr = textControllerEdad.text;
                          int edad = int.parse(edadStr);
                          Map resp = await ServiceApi.postCreateUser(
                              nombre, contra, edad, carnet);

                          if (resp['nombre'] != null) {
                            openDialog(nombre);

                            Navigator.pop(context);
                          }
                        },
                        text: 'Crear',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.05,
                          color: const Color(0xFF612ED5),
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontSize: 21,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          elevation: 3,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Align(
                alignment: const AlignmentDirectional(0, 0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          print("Boton de crear cuenta");
                          Navigator.pop(context);
                        },
                        text: '<- Volver',
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.05,
                          color: const Color(0xFF612ED5),
                          textStyle: FlutterFlowTheme.subtitle2.override(
                            fontSize: 21,
                            fontFamily: 'Poppins',
                            color: Colors.white,
                          ),
                          elevation: 3,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: 15,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.05,
                decoration: const BoxDecoration(
                  color: Color(0x00EEEEEE),
                  shape: BoxShape.rectangle,
                ),
              ),
              // Generated code for this Stack Widget...
            ],
          ),
        ),
      ),
    );
  }

  Future openDialog(String name) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text(
            "Cuenta creada",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            "Bienvenido:  $name",
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                _dismissDialog();
              },
              child: const Text("Salir"),
            ),
          ],
        ),
      );
}
