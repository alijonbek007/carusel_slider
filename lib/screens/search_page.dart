import 'package:cars_app/constants/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:cars_app/screens/profil_page.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  double? height;
  double? width;
  bool islike = false;
  CarouselController _carouselController = new CarouselController();
  int _current = 0;

  List<dynamic> _cars = [
    
    {
      'name': 'Porsche 911',
      'image': 'assets/images/porsche.jpg',
      'color': 'Red',
      'year': '1988',
      'price': '\$57,000'
    },
    {
      'name': 'Mercedes Benz',
      'image': 'assets/images/mers.jpg',
      'color': 'Black',
      'year': '1977',
      'price': '\$77,000'
    },
    {
      'name': 'Ferrari 250 GT',
      'image': 'assets/images/ferrari.jpg',
      'color': 'Blue',
      'year': '1962',
      'price': '\$49,000'
    },
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: main_color,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        toolbarHeight: height! * 0.13,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'SEARCH',
          style: TextStyle(
            color: Colors.white,
            fontSize: height! * 0.015,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: width! * 0.02),
            child: IconButton(
              icon: Icon(
                Icons.account_circle_outlined,
                color: Colors.white,
                size: height! * 0.035,
              ),
              onPressed: () {
                
              },
            ),
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Container(
        height: height,
        width: width,
        // color: main_color,
        child: Stack(
          children: [
            Positioned(
              height: height! / 2,
              width: width,
              child: Container(
                height: height! / 2,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.elliptical(
                      height! / 4,
                      width! / 10,
                    ),
                    bottomLeft: Radius.elliptical(
                      height! / 4,
                      width! / 10,
                    ),
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      gradient1,
                      gradient2,
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: height! * 0.15,
              left: width! * 0.05,
              child: Container(
                height: height! / 2,
                width: width! -80,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              "FIND",
                              style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            _cars[_current]['name'],
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 3,
                            width: width! * 0.4,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: const Text(
                              "SORT BY",
                              style: TextStyle(
                                  fontSize: 8.0,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Price, Low to High',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 3,
                            width: width! * 0.5,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              height: height! / 2,
              width: width,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 380.0,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.80,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  },
                ),
                carouselController: _carouselController,
                items: _cars.map((cars) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Stack(
                        children: [
                          Container(
                              height: height! / 2.2,
                              width: width,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: SingleChildScrollView(
                                child: Column(
                                  children: [
                                    Container(
                                      height: height! / 3.4,
                                      clipBehavior: Clip.hardEdge,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Image.asset(cars['image'],
                                          fit: BoxFit.cover),
                                    ),
                                    SizedBox(height: 20),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Row(
                                        children: [
                                          Container(
                                            child: Text(
                                              cars['year'],
                                              style: TextStyle(
                                                  fontSize: 14.0,
                                                  color: Colors.grey.shade600,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            cars['name'],
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            cars['price'],
                                            style: TextStyle(
                                                fontSize: 16.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    AnimatedOpacity(
                                      duration: Duration(milliseconds: 500),
                                      opacity: _current == _cars.indexOf(cars)
                                          ? 1.0
                                          : 0.0,
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: main_color,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  '100k Mi',
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: main_color,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  cars['color'],
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 30,
                                              width: 80,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: main_color,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Alamo, Ca',
                                                  style: TextStyle(
                                                      fontSize: 10.0,
                                                      color:
                                                          Colors.grey.shade600),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                          Positioned(
                            top: height! / 3.8,
                            right: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              radius: 25,
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    islike
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      islike = !islike;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
