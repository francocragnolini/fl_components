import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  InputsScreen({super.key});

  final Map<String, String> formValues = {
    "first_name": "Franco",
    "last_name": "Cragnolini",
    "email": "franco@gmail.com",
    "password": "123456",
  };

  @override
  Widget build(BuildContext context) {
    //? global key para mantener una referencia con el formulario
    final GlobalKey<FormState> myFormKey = GlobalKey();

    return Scaffold(
      appBar: AppBar(title: const Text("Inputs Screen")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomInput(
                hintText: "Nombre del usuario",
                labelText: "Nombre",
                formValues: formValues,
                formProperty: 'first_name',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomInput(
                hintText: "Apellido del Usuario",
                labelText: "Apellido",
                formValues: formValues,
                formProperty: 'last_name',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomInput(
                hintText: "Correo del Usuario",
                labelText: "Correo",
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomInput(
                hintText: "Contraseña del Usuario",
                labelText: "Contraseña",
                obscuredText: true,
                formValues: formValues,
                formProperty: 'password',
              ),
              DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(value: 'Admin', child: Text('Admin')),
                    DropdownMenuItem(
                        value: 'Superuser', child: Text('Superuser')),
                    DropdownMenuItem(
                        value: 'Developer', child: Text('Developer')),
                    DropdownMenuItem(
                        value: 'Jr. Developer', child: Text('Jr. Developer')),
                  ],
                  onChanged: (value) {
                    log(value.toString());
                    formValues['role'] = value ?? 'Admin';
                  }),
              ElevatedButton(
                onPressed: () {
                  //? focusScope to disabled the keyboord when the button is pressed
                  FocusScope.of(context).requestFocus(FocusNode());

                  log("$formValues");
                  //? va a determinar si el formulario es valido o no
                  //? tambien dispara las validaciones de los inputs
                  //? retorna un valor booleano
                  //? si el form is not valid
                  if (!myFormKey.currentState!.validate()) {
                    log("Formulario no valido");
                    return;
                  }
                },
                child: const SizedBox(
                  width: double.infinity,
                  child: Center(
                    child: Text("Guardar"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
