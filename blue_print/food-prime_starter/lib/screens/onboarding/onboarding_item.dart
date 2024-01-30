import 'package:flutter/material.dart';
import 'package:food_prime_app/screens/auth/login_page.dart';
import 'package:food_prime_app/screens/widgets/button_container_widget.dart';
import 'package:food_prime_app/theme/style.dart';

class OnBoardingItem extends StatelessWidget {
  final String title;
  final String description;
  final String image;
  final int index;

  const OnBoardingItem({Key? key, required this.title, required this.description, required this.image, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 80),
      child: Column(
        children: [
          Image.asset("assets/word_app_logo.png"),
          const SizedBox(height: 130),
          Center(child: Image.asset("assets/$image")),
          const SizedBox(height: 40),
          Text(
            title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
          const SizedBox(height: 80),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(shape: BoxShape.circle, color: index == 0 ? primaryColorED6E1B : Colors.grey),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(shape: BoxShape.circle, color: index == 1 ? primaryColorED6E1B : Colors.grey),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                width: 10,
                height: 10,
                decoration: BoxDecoration(shape: BoxShape.circle, color: index == 2 ? primaryColorED6E1B : Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 50),
          index == 2
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: ButtonContainerWidget(
                    title: "Get Started",
                    hasIcon: true,
                    icon: Icons.arrow_forward_ios,
                    onTap: () => Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                      (route) => false,
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
