import 'package:flutter/material.dart';

class FlutterPageView extends StatefulWidget {
  const FlutterPageView({Key? key}) : super(key: key);

  @override
  State<FlutterPageView> createState() => _FlutterPageViewState();
}

class _FlutterPageViewState extends State<FlutterPageView> {
  final PageController _pageController = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
        actions: [
          IconButton(
              onPressed: () {
                _pageController.previousPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          IconButton(
              onPressed: () {
                _pageController.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
              },
              icon: const Icon(Icons.arrow_forward_ios)),
        ],
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (value) {
          debugPrint(value.toString());
        },
        children: [
          Container(
            color: Colors.red,
            child: const Center(child: Text("Page 1")),
          ),
          Container(
            color: Colors.green,
            child: const Center(child: Text("Page 2")),
          ),
          Container(
            color: Colors.blueAccent,
            child: const Center(child: Text("Page 3")),
          )
        ],
      ),
    );
  }
}
