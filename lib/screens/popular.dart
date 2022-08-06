import 'package:flutter/material.dart';
import 'package:groceryus_app/model/grocery_product.dart';

class Popular extends StatefulWidget {
  const Popular({Key? key}) : super(key: key);

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Popular Deals',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'DancingScript',
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          'See All',
                          style: TextStyle(
                            color: Color(0xFFFA5B07),
                            fontSize: 18,
                          ),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      children: List.generate(
                        Grocery.itemList().length,
                        (index) => Stack(
                          children: [
                            Container(
                              alignment: Alignment.bottomCenter,
                              //height: 250,
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 25),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    '${Grocery.itemList()[index].name}',
                                    style: const TextStyle(
                                      fontSize: 26,
                                      fontFamily: 'JosefinSans',
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 20,
                              right: 20,
                              top: 0,
                              child: CircleAvatar(
                                radius: 60,
                                backgroundImage: AssetImage(
                                  '${Grocery.itemList()[index].img}',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
