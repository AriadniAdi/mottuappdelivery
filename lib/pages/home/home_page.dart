import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
    required this.tabActions,
    required this.headerInfos,
    required this.content,
  }) : super(key: key);

  final List<Widget> tabActions, headerInfos;
  final Widget content;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOnline = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(),
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
          'assets/images/mottu_simbol.png',
          width: 60,
          height: 60,
        ),
        actions: widget.tabActions,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.blueGrey,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: widget.headerInfos
                      .map((item) => Expanded(child: item))
                      .toList(),
                ),
              ),
            ),
          ),
          Expanded(child: widget.content),
        ],
      ),
    );
  }
}
