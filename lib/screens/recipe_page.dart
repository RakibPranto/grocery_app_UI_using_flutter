import 'package:flutter/material.dart';
import 'package:groceryus_app/model/grocery_product.dart';

class RecipePage extends StatefulWidget {
  const RecipePage({Key? key}) : super(key: key);

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  final grocery = Grocery.itemList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          color: const Color(0xFFE6F2FF),
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'choose your one \nfrom 1000+ Recipes!',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'JosefinSans',
                ),
              ),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(
                    left: 15, right: 15, top: 15, bottom: 0),
                height: 70,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border:
                        const UnderlineInputBorder(borderSide: BorderSide.none),
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
                  cursorHeight: 25,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black87,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Categories',
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
              Container(
                margin: const EdgeInsets.only(top: 5, bottom: 10),
                height: 150,
                decoration: const BoxDecoration(
                    //color: Colors.red
                    ),
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: grocery.length,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                          image: AssetImage('${grocery[index].img}'),
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
                          '${grocery[index].name}',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 15,
                    );
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Popular Deals',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
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
            ],
          ),
        ),
      ),
    );
  }
}
