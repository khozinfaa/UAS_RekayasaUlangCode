import 'package:eightclass/secion/hadist_page.dart';
import 'package:flutter/material.dart';

class Pageha extends StatefulWidget {
  const Pageha({Key? key}) : super(key: key);

  @override
  State<Pageha> createState() => _PagehaState();
}

class _PagehaState extends State<Pageha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            height: 400,
            width: 400,
            color: Colors.blue,
            child: InkWell(
              child: Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Hadist()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/homep3.png"),
                        ),
                        Text(
                          "Al-Hadist",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
