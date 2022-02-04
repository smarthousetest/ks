import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:kazansummit/utils/constants.dart';
import 'package:circular_profile_avatar/circular_profile_avatar.dart';

class SpeakerCard extends StatelessWidget {
  String image;
  String name;
  String firm;
  String post;

  SpeakerCard(
      {required this.image,
      required this.name,
      required this.firm,
      required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kDecorationBox,
      child: Padding(
          padding:
              const EdgeInsets.only(top: 8, bottom: 8, left: 10, right: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircularProfileAvatar(
                '',
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                radius: 32,
              ),
              SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$name", style: kContentTextStyle),
                  SizedBox(height: 7),
                  Text("$firm",
                      style: const TextStyle(
                          color: Color(0xFF828282),
                          fontWeight: FontWeight.w300,
                          fontSize: 12)),
                  SizedBox(height: 4),
                  Container(
                    width: MediaQuery.of(context).size.width - 200,
                    child: AutoSizeText("$post",
                        style: const TextStyle(
                            color: Color(0xFF828282),
                            fontWeight: FontWeight.w300,
                            fontSize: 12)),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
