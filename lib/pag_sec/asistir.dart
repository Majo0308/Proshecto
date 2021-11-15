import 'package:flutter/material.dart';
class Add_event extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Asistir a Evento"),
        shadowColor: Colors.white,
        backgroundColor: Color(0xFF612ED5),
      ),
      body:
      Container(
        //decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/fondito2.jpg'), 
          //fit: BoxFit.cover,
        //)),
        color: Color(0xFF252530),
        child:Container(
        width: 500, 
        //padding: EdgeInsets.only(top:10, left: 10, right:10, bottom:10),
        child: ListView(
          
          children: [
            Image(image: AssetImage('assets/images/añadir.jpg')),
            Padding(padding: new EdgeInsets.all(20.0)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(                
                  'Temática',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontFamily: 'Poppins',color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.transparent,
                  width: 250,
                  child: TextFormField(
                     style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: new EdgeInsets.all(10.0),
                      hintText: 'Ingresa la temática de tu fiesta',
                      fillColor: Color(0xFF612ED5),
                      enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF612ED5),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                    ),
                  ),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(                
                  'Fecha',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontFamily: 'Poppins',color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.transparent,
                  width: 250,
                  child: TextFormField(
                     style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: new EdgeInsets.all(10.0),
                      hintText: 'DD/MM/AA',
                      fillColor: Color(0xFF612ED5),
                      enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF612ED5),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                    ),
                  ),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(                
                  'Hora',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontFamily: 'Poppins',color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.transparent,
                  width: 250,
                  child: TextFormField(
                     style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: new EdgeInsets.all(10.0),
                      hintText: 'HH:MM',
                      fillColor: Color(0xFF612ED5),
                      enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF612ED5),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                    ),
                  ),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(                
                  'Precio',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontFamily: 'Poppins',color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.transparent,
                  width: 250,
                  child: TextFormField(
                     style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: new EdgeInsets.all(10.0),
                      hintText: 'Ingrese monto',
                      fillColor: Color(0xFF612ED5),
                      enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF612ED5),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                    ),
                  ),
                ),
              ],),
            ),
            Padding(
              
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                 Text(                
                    'Dirección',
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontFamily: 'Poppins',color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
              
                Container(
                  color: Colors.transparent,
                  width: 250,
                  child: TextFormField(
                     style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: new EdgeInsets.all(10.0),
                      hintText: 'Ingresa Dirección',
                      fillColor: Color(0xFF612ED5),
                      enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF612ED5),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                    ),
                  ),
                ),
              ],),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Text(                
                  'Ubicación',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontFamily: 'Poppins',color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Container(
                  color: Colors.transparent,
                  width: 250,
                  child: TextFormField(
                     style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: new EdgeInsets.all(10.0),
                      hintText: 'Ingrese URL de Ubicación',
                      fillColor: Color(0xFF612ED5),
                      enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color(0xFF612ED5),
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(20),
                            ),
                    ),
                  ),
                ),
              ],),
            ),
           
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  
                  'Descripción',
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 300,
                height: 100,
                child: TextField(
                  maxLines: 5,
                  decoration: InputDecoration(
                    contentPadding: new EdgeInsets.all(10.0),
                    enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF612ED5),
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                    hintText: 'Ingrese Descripción'
                  ),
                ),
              ),
            ),
            
            ElevatedButton(
                child: Text('Uber'),
                onPressed: () {
               
              },
            ),
          ],
        )
      ),
      ),
    );
  }
}
