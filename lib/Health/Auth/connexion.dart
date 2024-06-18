// // ignore_for_file: non_constant_identifier_names

// import 'package:flutter/material.dart';

// class Connexion extends StatefulWidget {
//   const Connexion({super.key});

//   @override
//   State<Connexion> createState() => _ConnexionState();
// }

// class _ConnexionState extends State<Connexion> {
//   final _formKey = GlobalKey<FormState>();
//   TextEditingController mailController = TextEditingController();
//   TextEditingController mdpController = TextEditingController();

//   int index_button = 0;
//   final List items_button_child = const [
//     Text(
//       "Se connecter ",
//       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
//     ),
//     CircularProgressIndicator(
//       color: Colors.white,
//     )
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           /*
//           leading: IconButton(
//             icon: const Icon(
//               Icons.close,
//               color: Colors.black,
//             ),
//             onPressed: () => Navigator.of(context).popAndPushNamed('/main'),
//           ),
//           */
//           backgroundColor: Colors.white,
//           elevation: 0,
//         ),
//         backgroundColor: Colors.white,
//         body: ListView(
//           children: [
//             Container(
//               height: 100,
//               width: double.infinity,
//               margin: const EdgeInsets.all(0),
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                     bottomLeft: Radius.circular(30),
//                     bottomRight: Radius.circular(30)),
//                 color: Colors.white,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0xffDDDDDD),
//                     blurRadius: 6.0,
//                     spreadRadius: 3.0,
//                     offset: Offset(0.0, 0.0),
//                   )
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.max,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//                   Center(
//                       child: ListTile(
//                     title: Row(
//                       mainAxisSize: MainAxisSize.min,
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: const Text(
//                             " Health  Money . ",
//                             style: TextStyle(
//                               backgroundColor:
//                                   Color.fromARGB(193, 62, 118, 182),
//                               letterSpacing: 1,
//                               fontSize: 25,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     subtitle: const Text(
//                       " Surveille ton argent avec simplicité",
//                       style: TextStyle(
//                         letterSpacing: 1,
//                         fontSize: 14,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   )),
//                 ],
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               margin: const EdgeInsets.all(0),
//               decoration: const BoxDecoration(
//                 color: Colors.transparent,
//               ),
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   mainAxisSize: MainAxisSize.max,
//                   children: [
//                     //Title connexion.....
//                     Padding(
//                       padding: const EdgeInsets.only(top: 30.0, bottom: 20),
//                       child: ClipRRect(
//                         borderRadius: BorderRadius.circular(10),
//                         child: const Text(
//                           "  CONNEXION  ",
//                           style: TextStyle(
//                               // backgroundColor:
//                               //     Color.fromARGB(193, 255, 211, 77),
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                     ),
//                     //Email.....
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 15),
//                       child: ListTile(
//                         title: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 20),
//                           child: Text(
//                             "Email",
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey[800],
//                             ),
//                           ),
//                         ),
//                         subtitle: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Flexible(
//                               child: TextFormField(
//                                 controller: mailController,
//                                 keyboardType: TextInputType.emailAddress,
//                                 textInputAction: TextInputAction.next,
//                                 maxLength: 30,
//                                 textAlign: TextAlign.center,
//                                 decoration: InputDecoration(
//                                   counterText: "",
//                                   contentPadding:
//                                       EdgeInsets.symmetric(vertical: 0),
//                                   hintText: "Saisissez votre email",
//                                   suffixIcon: Icon(
//                                     Icons.email_outlined,
//                                     color: Colors.grey,
//                                   ),
//                                   filled: true,
//                                   fillColor: Colors.grey[200],
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide.none,
//                                   ),
//                                 ),
//                                 validator: (value) {
//                                   if (value!.isEmpty) {
//                                     return 'Veuillez saisir votre email';
//                                   }
//                                   return null;
//                                   // return GENERAL_FUNCTION()
//                                   //   .validateEmail(value);
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 15,
//                     ),
//                     // Mot de passe.....
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 15),
//                       child: ListTile(
//                         title: Padding(
//                           padding: const EdgeInsets.symmetric(
//                               vertical: 10.0, horizontal: 20),
//                           child: Text(
//                             "Mot de passe",
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               fontSize: 14,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey[800],
//                             ),
//                           ),
//                         ),
//                         subtitle: Row(
//                           mainAxisSize: MainAxisSize.max,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Flexible(
//                               child: TextFormField(
//                                 controller: mdpController,
//                                 keyboardType: TextInputType.number,
//                                 obscureText: true,
//                                 style: TextStyle(fontSize: 17),
//                                 textInputAction: TextInputAction.done,
//                                 maxLength: 5,
//                                 textAlign: TextAlign.center,
//                                 decoration: InputDecoration(
//                                   contentPadding:
//                                       EdgeInsets.symmetric(vertical: 0),
//                                   hintText: "Saisissez votre mot de passe",
//                                   hintStyle: TextStyle(fontSize: 15),
//                                   suffixIcon:
//                                       Icon(Icons.lock, color: Colors.grey),
//                                   filled: true,
//                                   fillColor: Colors.grey[200],
//                                   border: OutlineInputBorder(
//                                     borderRadius: BorderRadius.circular(10),
//                                     borderSide: BorderSide.none,
//                                   ),
//                                 ),
//                                 validator: (value) {
//                                   if (value!.isEmpty) {
//                                     return 'Veuillez saisir votre mot de passe ';
//                                   }
//                                   return null;
//                                 },
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     Visibility(
//                       visible: false,
//                       child: Container(
//                         width: double.infinity,
//                         child: TextButton(
//                             onPressed: () {},
//                             child: const Text(
//                               "Mot de passe oublié ?",
//                               style: TextStyle(fontSize: 16),
//                             )),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     // Mot de passe.....

//                     Container(
//                       width: 250,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: ElevatedButton(
//                         onPressed: () => Navigator.of(context)
//                             .popAndPushNamed('/AccueilMenu'),
//                         child: Text('CONNEXION'),
//                       ),
//                     ),
//                     // S'inscrire.....
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Pas encore de compte ? "),
//                         TextButton(
//                           onPressed: () => Navigator.of(context)
//                               .popAndPushNamed('/Inscription'),
//                           child: const Text(
//                             "S'incrire",
//                             style: TextStyle(fontSize: 16),
//                           ),
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ));
//   }
// }

///////////////////////////
///
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/Auth/inscription.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/MyAppBar.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/saisie.dart';
import 'package:wallet_cryptocurrency/Health/ui/aces/home.dart';

//import 'package:wallet_cryptocurrency/Health/ui/aces/home.dart';

// import '../../model/user.dart';
import '../controller/login.dart';
//import 'package:lottie/lottie.dart';

class Connexion extends StatefulWidget {
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

class _ConnexionState extends State<Connexion> {
  final _formKey = GlobalKey<FormState>();
  LoginController controller = Get.put(LoginController());

  @override
  void initState() {
    print('ijij');
    super.initState();
  }

  bool _isVisible = true;

  // Comment
  int indexbutton = 0;
  // final List _itemsButtonChild = [
  //   const Text(
  //     "Se connecter 0",
  //     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
  //   ),
  //   CircularProgressIndicator(
  //     color: blanc,
  //   )
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary,
        toolbarHeight: 30,
        elevation: 0,
      ),
      backgroundColor: blanc,
      body: ListView(
        children: [
          barApp(),
          ////
          Container(
            width: double.infinity,
            margin: const EdgeInsets.all(0),
            decoration: BoxDecoration(
              color: transparent,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  //Title connexion.....
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Text(
                        Trans("Se connecter").tr,
                        style: TextStyle(
                            // backgroundColor:
                            //     Color.fromARGB(193, 255, 211, 77),
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  //Email.....
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: saisie(
                      title: "Email",
                      hint: Trans("Saisissez votre email").tr,
                      controller: controller.email,
                      keybord: TextInputType.emailAddress,
                      action: TextInputAction.next,
                      iconPrefix: Icons.email_outlined,
                      length: 30,
                      val: (value) {
                        if (value!.isEmpty) {
                          return Trans("Veuillez saisir votre email").tr;
                        }
                        return null;
                        // return GENERAL_FUNCTION().validateEmail(value);
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // Mot de passe.....

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: password(
                      isVisible: _isVisible,
                      controller: controller.password,
                      pressed: () {
                        setState(
                          () {
                            _isVisible = !_isVisible;
                          },
                        );
                      },
                    ),
                  ),
                  //
                  Visibility(
                    visible: false,
                    child: SizedBox(
                      width: double.infinity,
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            Trans("Mot de passe oublié ?").tr,
                            style: TextStyle(fontSize: 16),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // kisskoff code
                  buttonCustom(
                    text: Trans("Se connecter").tr,
                    textColor: blanc,
                    color: primary,
                    tap: () async {
                      /*  SharedPreferences localStorage =
                          await SharedPreferences.getInstance();
                      localStorage.setString(
                          'nom', controller.nom.toString().trim());
                      localStorage.setString(
                          'email', controller.email.toString().trim());
                      print('${controller.password}');
                      await controller.submit();*/
                      Get.to(Home());
                      // Provider.of<User>(context,listen: false).Connexion(

                      // );
                      //print(mailController.text);
                      //await Get.to(()=>Home());
                      //await Future.delayed(
                      //  const Duration(seconds: 2),
                      //() => Navigator.of(context).pushReplacement(
                      //  MaterialPageRoute(builder: (_) => Home())));
                      //   break;

                      // case 0:
                      //   setState(() {
                      //     indexbutton = 0;
                      //   });

                      //   showMyDialog(
                      //       const ListTile(
                      //         title: Text("Aucune correspondance",
                      //             textAlign: TextAlign.center,
                      //             style: TextStyle(
                      //                 fontWeight: FontWeight.bold)),
                      //         subtitle: Text(
                      //             "Email et/ou mot de passe incorrect",
                      //             textAlign: TextAlign.center,
                      //             style: TextStyle(
                      //                 fontWeight: FontWeight.bold)),
                      //       ),
                      //       Lottie.asset("assets/lottie/94900-error.json",
                      //           height: 100),
                      //       context);
                      //   break;

                      // case -2:
                      //   setState(() {
                      //     indexbutton = 0;
                      //   });

                      //   showMyDialog(
                      //       const ListTile(
                      //         title: Text("Impossible de se connecter",
                      //             textAlign: TextAlign.center,
                      //             style: TextStyle(
                      //                 fontWeight: FontWeight.bold)),
                      //         subtitle: Text(
                      //             "Verifier votre connexion internet ",
                      //             textAlign: TextAlign.center,
                      //             style: TextStyle(
                      //                 fontWeight: FontWeight.bold)),
                      //       ),
                      //       Lottie.asset("assets/lottie/94900-error.json",
                      //           height: 100),
                      //       context);
                      //   break;

                      // case -3:
                      //   setState(() {
                      //     indexbutton = 0;
                      //   });

                      // GENERAL_FUNCTION().scaffoldMessage(
                      //     context, true, "Une erreur est survenue");
                      // break;
                      // }
                      // }
                    },
                  ),
                  // S'inscrire.....
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(Trans("Pas encore de compte ? ").tr),
                      TextButton(
                          child: Text(
                            Trans("S'incrire").tr,
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () =>
                              //Navigator.of(context).popAndPushNamed('/SignUp'),
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => Inscription()))),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
