import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:groceryus_app/model/grocery_product.dart';
import 'package:groceryus_app/screens/popular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isDark = false;
  _darkMode() {
    setState(() {
      isDark == !isDark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor:
              isDark == true ? Colors.black : const Color(0xffe6f2ff),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
            child: Column(children: [
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hand picked fresh \nitems only for you!',
                          style: TextStyle(
                            color:
                                (isDark == true ? Colors.white : Colors.black),
                            fontSize: 28,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'JosefinSans',
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.notifications_none_outlined),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  isDark = !isDark;
                                });
                              },
                              child: Container(
                                height: 35,
                                width: 65,
                                decoration: BoxDecoration(
                                    color: isDark == false
                                        ? Colors.white
                                        : Colors.black,
                                    borderRadius: BorderRadius.circular(50)),
                                child: Container(
                                    alignment: Alignment.center,
                                    child: isDark == false
                                        ? const Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(left: 8.0),
                                              child: Text(
                                                "🔆",
                                                style: TextStyle(fontSize: 25),
                                              ),
                                            ))
                                        : const Align(
                                            alignment: Alignment.centerRight,
                                            child: Padding(
                                              padding:
                                                  EdgeInsets.only(right: 8.0),
                                              child: Text(
                                                "🌙",
                                                style: TextStyle(fontSize: 25),
                                              ),
                                            ))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(8),
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 0),
                      height: 60,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide.none),
                          hintText: 'Search For Enythings',
                          hintStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.grey.shade600,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 40,
                            color: Colors.grey.shade600,
                          ),
                        ),
                        cursorColor: Colors.grey.shade600,
                        cursorHeight: 20,
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            'Categories',
                            style: TextStyle(
                              color: (isDark == true
                                  ? Colors.white
                                  : Colors.black),
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
                    Container(
                      margin: const EdgeInsets.only(top: 5, bottom: 10),
                      height: 100,
                      decoration: const BoxDecoration(
                          //color: Colors.red
                          ),
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: Grocery.itemList().length,
                        itemBuilder: (context, index) {
                          return Container(
                            alignment: Alignment.bottomCenter,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage(
                                    '${Grocery.itemList()[index].img}'),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              width: double.infinity,
                              height: 40,
                              decoration: const BoxDecoration(
                                  color: Color(0xFFFE5722),
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  )),
                              child: Text(
                                '${Grocery.itemList()[index].name}',
                                style: TextStyle(
                                  color: (isDark == true
                                      ? Colors.white
                                      : Colors.black),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const SizedBox(
                            width: 5,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: CarouselSlider.builder(
                  itemCount: Grocery.itemList().length,
                  itemBuilder: (context, index, realIndex) {
                    return Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image:
                                AssetImage('${Grocery.itemList()[index].img}'),
                            fit: BoxFit.cover,
                          )),
                    );
                  },
                  options: CarouselOptions(
                    height: 160,
                    autoPlay: true,
                    pageSnapping: true,
                    autoPlayInterval: const Duration(seconds: 2),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const Popular(),
                            ));
                          },
                          child: Text(
                            'Popular Deals',
                            style: TextStyle(
                              color: (isDark == true
                                  ? Colors.white
                                  : Colors.black),
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
              ),
            ]),
          )),
    );
  }
}
