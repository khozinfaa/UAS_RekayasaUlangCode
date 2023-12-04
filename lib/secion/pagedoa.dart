import 'package:eightclass/secion/doa_page.dart';
import 'package:flutter/material.dart';

class Pagedoa extends StatefulWidget {
  const Pagedoa({Key? key}) : super(key: key);

  @override
  State<Pagedoa> createState() => _PagedoaState();
}

class _PagedoaState extends State<Pagedoa> {
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
            color: Colors.purple,
            child: InkWell(
              child: Expanded(
                child: InkWell(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Doa()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 40),
                    child: const Column(
                      children: <Widget>[
                        Image(
                          image: AssetImage("assets/images/homep1.png"),
                        ),
                        Text(
                          "Do'a",
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
