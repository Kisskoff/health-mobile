import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

Widget saisie({
  final title,
  String? hint,
  TextEditingController? controller,
  int? maxlines,
  bool obscur = false,
  final keybord,
  IconData? iconPrefix,
  int? length,
  dynamic action,
  String? Function(String?)? val,
  String? suffixTxt,
  List<TextInputFormatter>? formater,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titreSaisie(
        text: title, //"Email",
        max: 1,
        over: TextOverflow.ellipsis,
        size: 14,
      ),
      const SizedBox(
        height: 10,
      ),
      TextFormField(
        maxLength: length ?? 50,
        obscureText: obscur,
        obscuringCharacter: '*',
        controller: controller,
        maxLines: maxlines,
        keyboardType: keybord,
        textAlign: TextAlign.center,
        textInputAction: action ?? TextInputAction.next,
        //    fillColor: Colors.grey[200],
        decoration: InputDecoration(
          //suffix: Text(suffixTxt!),
          focusColor: blanc,
          hoverColor: rouge,
          fillColor: gris2,
          hintText: hint,
          counterText: "",
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          hintStyle: TextStyle(
            color: gris,
            fontSize: 14,
          ),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              controller?.clear();
            },
            icon: Icon(
              Icons.close,
              color: gris,
              size: 16.0,
            ),
          ),
          prefixIcon: Icon(
            iconPrefix,
            color: gris,
            size: 24,
          ),
        ),
        validator: val,
        style: TextStyle(
          color: noir,
          fontSize: 14,
          //fontWeight: FontWeight.bold,
        ),
        inputFormatters: formater,
      ),
    ],
  );
}
// passe

Widget password({
  required final bool isVisible,
  TextEditingController? controller,
  VoidCallback? pressed,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titreSaisie(
        text: Trans("Mot de passe").tr, //"Email",
        max: 1,
        over: TextOverflow.ellipsis,
        size: 14,
      ),
      const SizedBox(
        height: 10,
      ),
      TextFormField(
        controller: controller,
        keyboardType: TextInputType.text,
        obscureText: isVisible,
        style: const TextStyle(fontSize: 17),
        textInputAction: TextInputAction.done,
        maxLength: 5,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 0),
          hintText: Trans("saisissez").tr,
          hintStyle: const TextStyle(fontSize: 15),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          suffixIcon: IconButton(
            onPressed: pressed,
            icon: Icon(
              isVisible ? Icons.visibility_off : Icons.visibility,
              color: gris,
              size: 16.0,
            ),
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: gris,
            size: 24,
          ),
        ),
        inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[0-9]"))],
        validator: (value) {
          if (value!.isEmpty) {
            return 'Veuillez saisir votre mot de passe ';
          }
          return null;
        },
      ),
    ],
  );
}

///
Widget saisieInfo({
  VoidCallback? readClic,
  final title,
  String? hint,
  TextEditingController? controller,
  required bool read,
  int? maxlines,
  final keybord,
  int? length,
  dynamic action,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      titreSaisie(
        text: title,
        max: 1,
        over: TextOverflow.ellipsis,
        size: 14,
      ),
      const SizedBox(
        height: 10,
      ),
      TextFormField(
        maxLength: length ?? 50,
        obscuringCharacter: '*',
        controller: controller,
        maxLines: maxlines,
        keyboardType: keybord,
        textAlign: TextAlign.start,
        textInputAction: action ?? TextInputAction.next,
        readOnly: read,
        decoration: InputDecoration(
          focusColor: blanc,
          hoverColor: rouge,
          fillColor: blanc,
          hintText: hint,
          counterText: "",
          contentPadding: const EdgeInsets.symmetric(
            // vertical: 10,
            horizontal: 10,
          ),
          hintStyle: TextStyle(
            color: gris,
            fontSize: 14,
          ),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          suffixIcon: IconButton(
            onPressed: readClic,
            icon: Icon(
              Icons.edit,
              color: gris,
              //size: 16.0,
            ),
          ),
        ),
        style: TextStyle(
          color: noir,
          fontSize: 14,
          //fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget saisiePhone({
  VoidCallback? readClic,
  TextEditingController? controller,
  required bool read,
}) {
  return SizedBox(
    width: double.infinity,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        subtitleBold(
          text: Trans("Téléphone").tr,
          size: 14,
        ),
        const SizedBox(
          height: 10,
        ),
        IntlPhoneField(
          readOnly: read,
          controller: controller,
          decoration: InputDecoration(
            counterText: "",
            contentPadding: const EdgeInsets.symmetric(vertical: 10),
            hintText: "0000000000",
            suffixIcon: IconButton(
              icon: Icon(
                Icons.edit,
                color: gris,
              ),
              onPressed: readClic,
            ),
            filled: true,
            fillColor: blanc,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
          ),
          pickerDialogStyle: PickerDialogStyle(
            listTileDivider: const SizedBox(
              height: 1,
            ),
            backgroundColor: blanc,
            searchFieldInputDecoration: InputDecoration(
              fillColor: rouge,
              helperText: "Recherche un pays",
              hoverColor: vert,
            ),
          ),
          initialCountryCode: 'CI',
          invalidNumberMessage: "Numéro invalide",
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp("[0-9]"))],
          // onChanged: (number) {
          //   setState(() {
          //     numberPhone = number.completeNumber;
          //     debugPrint(numberPhone);
          //   });
          // },
          validator: (value) {
            if (value!.completeNumber.isEmpty) {
              return 'Saisie obligatoire';
            }
            return null;
          },
        ),
      ],
    ),
  );
}
