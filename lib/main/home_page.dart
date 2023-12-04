import 'package:eightclass/secion/pagedoa.dart';
import 'package:eightclass/secion/pagesholat.dart';
import 'package:flutter/material.dart';

import '../secion/pagehadist.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _controller = PageController();
  int currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        currentPageIndex = _controller.page?.round() ?? 0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 400,
            child: PageView(
              controller: _controller,
              children: const [
                Pagedoa(),
                Pageha(),
                PageSholat(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
