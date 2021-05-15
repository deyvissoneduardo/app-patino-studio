import 'package:flutter/material.dart';

class FormController {
  var key = GlobalKey<FormState>();

  // metodo que valida o formulario
  bool validForm() {
    var form = key.currentState;

    if (form.validate()) {
      form.save();
      return true;
    } else {
      return false;
    }
  }
}
