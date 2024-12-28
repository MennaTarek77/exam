import 'package:flutter/material.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        const Row(
          children: [
            Text(
              'Recommended For You',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w600,
              ),
            ),
            Spacer(),
            Text("See more",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff4838D1)))
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        SizedBox(
          height: 300,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  // margin: EdgeInsets.all(10),
                  decoration: const BoxDecoration(

                      // color: const Color(0xffF5F5FA)
                      ),
                  child: const Image(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/Image Placeholder 2.png"),
                  )),
              Container(
                  margin: const EdgeInsets.all(10),
                  width: 200,
                  decoration: const BoxDecoration(color: Color(0xffF5F5FA)),
                  child: const Image(
                      fit: BoxFit.cover,
                      image:
                          AssetImage("assets/images/Image Placeholder 1.png"))),
            ],
          ),
        ),
      ],
    );
  }
}
