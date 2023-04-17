import 'package:componente_count_01/helpers/dialogs.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor:
            const Color.fromARGB(255, 209, 143, 2), // Color del Bar...
        title: const Text("Bienvenido a Flutter!!!"),
      ),
      //WIDGET de Column para poder agregar varios WIDGET (Text, boton, img, y mas...)
      body: Builder(
        builder: (BuildContext context) => SingleChildScrollView(
          //ScrollView
          child: Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.blue),
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 5.0,
                      offset: Offset(5, 5) /*color: Colors.blue*/
                      )
                ]),
            child: Column(
              children: [
                const Text("Bienvenido a mi APP...",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold), //Color del texto
                    textDirection: TextDirection.ltr),
                //WIDGET para agregar imagenes desde el Internet... (Image.network())
                Image.network(
                  "https://i.pinimg.com/originals/f9/30/15/f930152b8ae4367c0fa2427c2272d614.jpg",
                  height: 350,
                  width: 300,
                ),
                //WIDGET de FILAS para elementos...
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue),
                        boxShadow: const [
                          BoxShadow(
                              blurRadius: 5.0,
                              offset: Offset(5, 5) /*color: Colors.blue*/
                              )
                        ]),
                    child: Row(
                      children: [
                        Image.asset(
                          "assets/img/logo1.jpg",
                          width: 75,
                          height: 75,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            "assets/img/logo2.jpg",
                            width: 68,
                            height: 68,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Image.asset(
                            "assets/img/logo3.jpg",
                            width: 75,
                            height: 75,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text("Esperando en Dios para conectar con Flutter.",
                    style: TextStyle(
                        color: Color.fromARGB(255, 4, 119, 14),
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold), //Color del texto
                    textDirection: TextDirection.ltr),
                //WIDGET Buttom
                ElevatedButton(
                  onPressed: () => contacto(context),
                  child: const Text("Contactar"),
                )
              ],
            ),
          ),
        ),
      ),
    )); //WIDGET
  }

  //Creando pantalla de Alectar en Flutter
  void contacto(BuildContext context) {
    infoDialogAndroidIOS(
        context: context,
        title: "Contacto",
        contenido: "Esta es realmente una ventana de Alert.");
  }
}
