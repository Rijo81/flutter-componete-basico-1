import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

//infoDialog(BuildContext context, title, contenido) { Paramentros normales...
infoDialogAndroidIOS({required BuildContext context, title, contenido}) {
  //Parametros con nombre

  if (!Platform.isIOS) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) {
          return CupertinoAlertDialog(
            title: Text(title),
            content: Text(contenido),
            actions: [
              CupertinoDialogAction(
                  onPressed: () {
                    //Aqui nos permite remover la pantalla actual o salir de la pantalla actual.
                    Navigator.pop(context);
                  },
                  child: const Text("Cerrar"))
            ],
          );
        });
  } else {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(contenido),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    //Aqui nos permite remover la pantalla actual o salir de la pantalla actual.
                    Navigator.pop(context);
                  },
                  child: const Text("Cerrar"))
            ],
          );
        });
  }
}
