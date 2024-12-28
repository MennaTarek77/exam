import 'package:flutter/material.dart';

class BestSellerList extends StatelessWidget {
  const BestSellerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [ const SizedBox(height: 32,),
      const Row(
        children: [
          Text(
            'Best Seller',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          Spacer(),
          Text(
            "See more",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: Color(0xff4838D1),
            ),
          )
        ],
      ),
      const SizedBox(
        height: 16,
      ),
      SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Container(
                width: 320,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffF5F5FA)),
                child: const Row(
                  children: [
                    Image(
                        image: AssetImage(
                            "assets/images/Image.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Light Mage',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff010104))),
                        Text('Laurie Forest',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6A6A8B))),
                        Image(
                            image: AssetImage(
                                "assets/images/Rating.png")),
                        Text('1,000+ Listeners',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6A6A8B))),
                      ],
                    ),
                  ],
                )),
            Container(
                width: 320,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffF5F5FA)),
                child: const Row(
                  children: [
                    Image(
                        image: AssetImage(
                            "assets/images/Image.png")),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Light Mage',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xff010104))),
                        Text('Laurie Forest',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6A6A8B))),
                        Image(
                            image: AssetImage(
                                "assets/images/Rating.png")),
                        Text('1,000+ Listeners',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff6A6A8B))),
                      ],
                    ),
                  ],
                )),
          ],
        ),
      ),],);
  }
}
