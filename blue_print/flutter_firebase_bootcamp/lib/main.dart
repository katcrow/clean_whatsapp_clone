import 'package:flutter/material.dart';
import 'package:flutter_basics/lessons/week_1/on_boarding/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<OnBoardingEntity> _onBoardingData = OnBoardingEntity.onBoardingData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: _onBoardingData.length,
          itemBuilder: (context, index) {
            return OnBoardingItem(
                title: _onBoardingData[index].title,
                description: _onBoardingData[index].description,
                image: _onBoardingData[index].image,
                index: index);
          }),
    );
  }
}

class OnBoardingItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final int index;

  const OnBoardingItem({Key? key, required this.title, required this.description, required this.image, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset("assets/$image")),
        const SizedBox(height: 20),
        Text(
          title,
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        Text(
          description,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 18, color: Colors.grey),
        ),
        const SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(shape: BoxShape.circle, color: index == 0 ? Colors.black : Colors.grey),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(shape: BoxShape.circle, color: index == 1 ? Colors.black : Colors.grey),
            ),
            const SizedBox(
              width: 15,
            ),
            Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(shape: BoxShape.circle, color: index == 2 ? Colors.black : Colors.grey),
            ),
          ],
        )
      ],
    );
  }
}
