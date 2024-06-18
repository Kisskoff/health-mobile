// ignore_for_file: use_super_parameters
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/button.dart';
import 'package:wallet_cryptocurrency/Health/MyComponents/color.dart';

class NotifInfo extends StatefulWidget {
  final Map<String, dynamic> item;
  // final Item item;
  const NotifInfo({Key? key, required this.item}) : super(key: key);

  @override
  State<NotifInfo> createState() => _NotifInfoState();
}

class _NotifInfoState extends State<NotifInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //titleSpacing: 4,
            pinned: true,
            floating: false,
            //snap: true,
            //stretch: true,
            //stretchTriggerOffset: 10,
            leading: SizedBox(
              width: 50,
              height: 50,
              // decoration: BoxDecoration(
              //   color: blanc,
              //   borderRadius: BorderRadius.circular(30),
              // ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.clear,
                  color: blanc,
                ),
              ),
            ),

            toolbarHeight: MediaQuery.of(context).size.height * 0.3,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: widget.item['description'],
                child: Image.network(
                  widget.item[
                      'img'], //"https://i.pinimg.com/564x/6e/75/ac/6e75ac4d46f88b9b190bde7bf30ec16d.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            backgroundColor: blanc,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                  child: Column(
                    children: [
                      Text(
                        widget.item['description'],
                        style: TextStyle(fontSize: 16),
                      ),
                      // subtitleBold(
                      //   text: widget.item['description'],
                      //   //textColor: blanc,
                      //   size: 16,
                      //   //align: TextAlign.center,
                      //   line: 100,
                      // ),
                      const SizedBox(
                        height: 60,
                      ),
                    ],
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: buttonCustom(
          text: Trans("Ferner").tr,
          width: MediaQuery.of(context).size.width / 3,
          color: rouge,
          textColor: blanc,
          tap: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
    );
  }
}
