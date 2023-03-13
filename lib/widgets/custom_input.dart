import 'package:flutter/material.dart';

class CustomInput extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscuredText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomInput({
    super.key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscuredText = false,
    required this.formProperty,
    required this.formValues,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        obscureText: obscuredText,
        initialValue: '',
        keyboardType: keyboardType,
        textCapitalization: TextCapitalization.words,
        onChanged: (value) => {formValues[formProperty] = value},
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Mínimo de 3 letras' : null;
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          hintText: hintText,
          labelText: labelText,
          helperText: helperText,
          // prefixIcon: Icon( Icons.verified_user_outlined ),
          suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
          icon: icon == null ? null : Icon(icon),
        ));
  }
}




// import 'dart:developer';

// import 'package:flutter/material.dart';

// class CustomInput extends StatelessWidget {
//   final String? hintText;
//   final String? labelText;
//   final String? helperText;
//   final IconData? sufixIcon;
//   final IconData? icon;

//   const CustomInput({
//     Key? key,
//     this.hintText,
//     this.labelText,
//     this.helperText,
//     this.sufixIcon,
//     this.icon,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//         autofocus: false,
//         initialValue: "",
//         textCapitalization: TextCapitalization.words,
//         onChanged: (value) {
//           log("value: $value");
//         },
//         validator: (value) {
//           if (value == null) return "Este campo es requerido";
//           return value.length <= 3 ? "minimo de 3 letras" : null;
//         },
//         // ! va a validar cuando haya intercation del usuario
//         autovalidateMode: AutovalidateMode.onUserInteraction,

//         decoration: InputDecoration(
//           hintText: hintText,
//           labelText: labelText,
//           helperText: helperText,
//           // counterText: "tres caracteres",
//           suffixIcon: sufixIcon == null ? null : Icon(sufixIcon),
//           // prefixIcon: Icon(Icons.verified_outlined),
//           icon: icon == null ? null : Icon(icon),

//           // change border color when input is focused
//           // focusedBorder:
//           //     OutlineInputBorder(borderSide: BorderSide(color: Colors.green)),
//           // border: OutlineInputBorder(
//           //     borderRadius:
//           //         BorderRadius.only(bottomLeft: Radius.circular(10)))),
//         ));
//   }
// }