import 'package:eightclass/secion/sholat_page.dart';
import 'package:flutter/material.dart';

class PageSholat extends StatefulWidget {
  const PageSholat({Key? key}) : super(key: key);

  @override
  State<PageSholat> createState() => _PageSholatState();
}

class _PageSholatState extends State<PageSholat> {
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
            color: Colors.amber,
            child: InkWell(
              child: Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Sholat()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/homep2.png"),
                        ),
                        Text(
                          "Bacaan Sholat",
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
