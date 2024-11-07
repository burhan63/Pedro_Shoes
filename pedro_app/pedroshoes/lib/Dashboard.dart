import 'package:flutter/material.dart';
import 'package:pedroshoes/Childs.dart';
import 'package:pedroshoes/Mens.dart';
import 'package:pedroshoes/Womens.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  List categories = [
    'assets/images/pngwing_shoe1.png',
    'assets/images/amaze_shoes.png',
    'assets/images/pngwing_leather_normal.png',
    'assets/images/pngwing_leather_shoe_fab.png',
    'assets/images/pngwing_leather_shoe.png'
  ];
  var curretitem = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Pedro',
          style: TextStyle(
            fontSize: 25,
            fontFamily: 'Arial',
            fontWeight: FontWeight.bold,
          ),
        ),
        // actions: const [Icon(Icons.search)],
      ),
      body: Column(
        children: [
          // Expanded(
          //   child: getcurrentitem(),
          // ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    //color: Colors.white,
                    padding: const EdgeInsets.only(left: 20.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search Products",
                        hintStyle: TextStyle(fontSize: 15, fontFamily: 'Arial'),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black38,
                        ),
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "view all",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20.0),
                  height: 135,
                  child: ListView.builder(
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryTile(image: categories[index]);
                    },
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Trending Now...!!!",
                        style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'Arial',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        height: 150,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: ListView(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/images/pngwing_leather_shoe_fab.png',
                                    height: 100,
                                    width: 120,
                                    fit: BoxFit.contain,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const Text(
                                    "Branded Tennis FootWear",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Arial',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  const Row(
                                    children: [
                                      Text(
                                        "15,000 PKR",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontFamily: 'Arial',
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              currentAccountPicture: CircleAvatar(
                radius: 30,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.person_2_outlined,
                  size: 30,
                  color: Colors.black,
                ),
              ),
              accountName: Text(
                'Burhan Ali',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                'Burhan.Ali11556688@gmail.com',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Arial',
                  //fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              tileColor: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.person_2_outlined),
              title: Text('Profile'),
              tileColor: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Help Center'),
              tileColor: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            ListTile(
              leading: Icon(Icons.message_outlined),
              title: Text('Terms & Conditions'),
              tileColor: Colors.white,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            curretitem = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.woman), label: "Mens"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Womens"),
          BottomNavigationBarItem(
              icon: Icon(Icons.child_care), label: "Childs"),
        ],
      ),
    );
  }

  Widget getcurrentitem() {
    if (curretitem == 0) {
      return const Center(
        child: Text('Dashboard'),
      );
    } else if (curretitem == 1) {
      return const MensView();
    } else if (curretitem == 2) {
      return const WomensView();
    } else if (curretitem == 3) {
      return const ChildsView();
    } else {
      return const Center(
        child: Text('Dashboard'),
      );
    }
  }
}

class CategoryTile extends StatelessWidget {
  String image;
  CategoryTile({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.only(left: 20.0),
      height: 90,
      width: 120,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 70,
            width: 170,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 5,
          ),
          const Icon(Icons.forward),
        ],
      ),
    );
  }
}
