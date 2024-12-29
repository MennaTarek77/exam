import 'package:flutter/material.dart';
import '../widgets/best_seller_list.dart';
import '../widgets/recommended_list.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            title: const Image(
              image: AssetImage('assets/images/Logo.png'),
              width: 200,
            ),
            actions: const [
              ImageIcon(
                AssetImage('assets/icons/Setting.png'),
                size: 50,
                color: Color(0xff4838D1),
              ),
              SizedBox(
                width: 28,
              )
            ]),
        body: ListView(
          children: [
            Column(children: [
              const SizedBox(
                height: 32,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Categories',
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
                        color: Color(0xff4838D1)),
                  ),
                  SizedBox(
                    width: 42,
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              TabBar(
                  indicator: const BoxDecoration(),
                  indicatorWeight: 0,
                  isScrollable: true,
                  dividerHeight: 0,
                  indicatorPadding: const EdgeInsets.symmetric(horizontal: 0),
                  tabs: [
                    categoryItem('Art'),
                    categoryItem('Business'),
                    categoryItem('Comedy'),
                    categoryItem('Comedy'),
                    categoryItem('Drama'),
                  ]),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [RecommendedList(), BestSellerList()],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }

  Widget categoryItem(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color(0xffF5F5FA)),
      child: Text(
        title,
        style: const TextStyle(
            color: Color(0xff2E2E5D),
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
