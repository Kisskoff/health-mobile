import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/notif_info.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/texte.dart';

class MaNotif extends StatelessWidget {
  const MaNotif({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> notif = [
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/9d/73/2b/9d732bd7b64fb0cfe0255e3124f2ab03.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/a2/1b/b1/a21bb168773702d902ea1de7d95497e2.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/74/36/63/74366307c11cd08ed41aa83c1a73d063.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/70/cb/55/70cb55614c75139726dfb897a906f8f1.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/d8/8b/76/d88b76506c1afb93d8828bee43d9423f.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/6e/75/ac/6e75ac4d46f88b9b190bde7bf30ec16d.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/3b/5d/11/3b5d118c8f32b8b0f4af0697579fbbb0.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/9d/aa/78/9daa787063e2609108b0d733eaa707de.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/a6/b9/1a/a6b91a4f597f39694a3a5314f9be9780.jpg",
      },
      {
        "description":
            "Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page,",
        "img":
            "https://i.pinimg.com/564x/d5/4b/cf/d54bcf26cbe601a5e2538420cdb7ec4a.jpg",
      },
      {
        "description":
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Where does it come from Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.",
        "img":
            "https://i.pinimg.com/564x/66/15/1e/66151e3ad06729b3f8e56260f3192fd3.jpg",
      },
    ];

    return Scaffold(
      backgroundColor: fond,
      body: ListView.separated(
          itemBuilder: (context, index) {
            final items = notif[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: blanc,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: blanc,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              notif[index]["img"],
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: subtitleBold(
                                text: notif[index]["description"],
                                line: 3,
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            GestureDetector(
                              child: subtitleBold(
                                text: Trans("PLUS D'INFO").tr,
                                textColor: rouge,
                                align: TextAlign.start,
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        NotifInfo(item: items),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemCount: notif.length),
    );
  }
}
