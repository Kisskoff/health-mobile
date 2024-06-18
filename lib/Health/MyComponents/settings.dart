import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/apropos.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/compte.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/lang/Hindex.dart';
// import 'package:wallet_cryptocurrency/Health/MyComponents/lang/index.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/settingComponent.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

import '../Auth/connexion.dart';

class Settings extends StatefulWidget {
  const Settings({
    super.key,
  });

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final Uri launchUriTel = Uri(
    scheme: 'tel',
    path: "+2250769555850",
  );
  final launchUriWha = "whatsapp://send?phone=+2250768555850";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fond,
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            setting(
              text: Trans('Mon Compte').tr,
              sousTitre: Trans("Verifiez mes informations").tr,
              tap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => MonCompte()));
              },
            ),
            const SizedBox(
              height: 10,
            ),
            setting(
              text: Trans('Devise').tr,
              sousTitre: 'CFA',
            ),
            const SizedBox(
              height: 10,
            ),
            setting(
              text: Trans('LANGUE').tr,
              sousTitre: Trans('LANGUES').tr,
              tap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HLangue(
                      operation: 'setting',
                    ),
                  ),
                ); //Language()));''
              },
            ),
            const SizedBox(
              height: 10,
            ),
            setting(
              text: Trans('Reinitialiser').tr,
              sousTitre: Trans('Supprimer toutes les données').tr,
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              //height: 100,
              decoration: BoxDecoration(
                  color: blanc, borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  ListTile(
                    title: subtitleBold(
                      text: Trans('Contacter un conseiller client').tr,
                    ),
                    leading: Icon(
                      Icons.phone_android,
                      size: 24,
                    ),
                    onTap: () {},
                    // onTap: () async {
                    //   try {
                    //     await launchUrl(
                    //       Uri.parse(launchUriWha),
                    //     );
                    //   } catch (e) {
                    //     launchUrl(launchUriTel);
                    //   }
                    // },
                  ),

                  ListTile(
                    title: subtitleBold(
                      text: Trans('A propos de nous').tr,
                    ),
                    leading: Icon(
                      Icons.info,
                      size: 24,
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Apropos()));
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: rouge,
                      ), // kisskoff replace primary by backgroubdcolor
                      onPressed: () {
                        Get.offAll(Connexion());
                      },
                      child: ListTile(
                          title: subtitleBold(
                            text: Trans('Se déconnecter').tr,
                            textColor: blanc,
                          ),
                          leading: Icon(
                            Icons.logout,
                            size: 24,
                            color: blanc,
                          ),
                          onTap: () {
                            Get.offAll(Connexion());
                          }),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
