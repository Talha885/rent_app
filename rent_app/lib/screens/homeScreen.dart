// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rent_app/Order/orders.dart';
import 'package:rent_app/screens/brand_details.dart';
import 'package:rent_app/screens/brand_names_list.dart';
import 'package:rent_app/screens/car_details_Screen.dart';
import 'package:rent_app/styles/button.dart';

import 'package:rent_app/styles/typo.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List carsData = [
    {
      'image': 'assets/mclaren.png',
      'name': 'McLaren',
      'price': '10,000',
      'description':
          'The McLaren, a masterpiece of automotive engineering, is crafted for speed enthusiasts. With its aerodynamic design and powerful engine, it delivers an unparalleled driving experience. Elevate your journey with the McLaren.'
    },
    {
      'image': 'assets/bmw.png',
      'name': 'BMW',
      'price': '15,000',
      'description':
          'Embrace the epitome of luxury and performance with the BMW. This iconic brand is synonymous with elegance and cutting-edge technology. Whether on city streets or winding roads, the BMW offers a driving experience like no other.'
    },
    {
      'image': 'assets/miata.png',
      'name': 'Miata',
      'price': '12,000',
      'description':
          'Discover the joy of open-top driving with the Miata. This compact convertible is designed for those who appreciate the thrill of wind in their hair. Agile and responsive, the Miata is the perfect companion for your next adventure.'
    },
    {
      'image': 'assets/porsche.png',
      'name': 'Porsche',
      'price': '13,500',
      'description':
          'Unleash the power of German engineering with the Porsche. From its sleek design to its high-performance capabilities, this sports car exudes sophistication. Feel the adrenaline rush as you take control of the road in a Porsche.'
    },
    {
      'image': 'assets/ferrari.png',
      'name': 'Ferrari',
      'price': '16,000',
      'description':
          'Experience the epitome of automotive excellence with Ferrari. A symbol of luxury and speed, Ferrari cars are meticulously crafted for performance enthusiasts. Indulge in the thrill of driving a true Italian masterpiece.'
    },
    {
      'image': 'assets/mercedez.png',
      'name': 'Mercedes',
      'price': '18,000',
      'description':
          'Immerse yourself in the world of luxury and refinement with Mercedes. Known for its impeccable craftsmanship and advanced features, a Mercedes ensures a smooth and comfortable ride. Elevate your journey with the sophistication of a Mercedes.'
    },
  ];

  final List newCarsData = [
    {
      'id': '1',
      'image': 'assets/porsche.png',
      'name': 'Porsche',
      'price': '25,000',
      'description':
          'Unleash the power of German engineering with the Porsche. From its sleek design to its high-performance capabilities, this sports car exudes sophistication. Feel the adrenaline rush as you take control of the road in a Porsche.'
    },
    {
      'id': '2',
      'image': 'assets/ferrari.png',
      'name': 'Ferrari',
      'price': '18,000',
      'description':
          'Experience the epitome of automotive excellence with Ferrari. A symbol of luxury and speed, Ferrari cars are meticulously crafted for performance enthusiasts. Indulge in the thrill of driving a true Italian masterpiece.'
    },
    {
      'id': '3',
      'image': 'assets/mercedez.png',
      'name': 'Mercedes',
      'price': '16,000',
      'description':
          'Immerse yourself in the world of luxury and refinement with Mercedes. Known for its impeccable craftsmanship and advanced features, a Mercedes ensures a smooth and comfortable ride. Elevate your journey with the sophistication of a Mercedes.'
    },
  ];

  final List carLogos = [
    {'id': '1', 'name': 'BMW', 'image': 'assets/bmwLogo.png'},
    {'id': '2', 'name': 'Ford', 'image': 'assets/fordLogo.png'},
    {'id': '3', 'name': 'Jaguar', 'image': 'assets/JaguarLogo.png'},
    {'id': '4', 'name': 'Tesla', 'image': 'assets/teslaLogo.png'},
    {'id': '5', 'name': 'Toyota', 'image': 'assets/toyotaLogo.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 15, bottom: 10),
                            child: Text(
                              'Rent A Car',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Image.asset(
                            'assets/cover.png',
                            height: 120,
                            width: 170,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.lightBlueAccent[100],
                                  borderRadius: BorderRadius.circular(10)),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Orders(),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.notifications,
                                    color: Colors.white,
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const [
                                Text('Location',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(
                                  width: 50,
                                )
                              ],
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.location_on,
                                  size: 18,
                                  color: Colors.white,
                                ),
                                Text(
                                  'Sahiwal, Punjab',
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                transform: Matrix4.translationValues(
                  0.0,
                  -24.0,
                  0.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(left: 30, right: 30),
                        child: TextField(
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              hintText: 'Search here',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              fillColor: Colors.grey[200],
                              filled: true),
                        )),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Brands',
                            style: header,
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => MyBrands(),
                                  ),
                                );
                              },
                              child: Text('See All'))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 120,
                      child: ListView.builder(
                        itemCount: carLogos.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final currentCar = carLogos[index];

                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BrandDetailsScreen(
                                      brandId: currentCar['id'] ?? "",
                                    ),
                                  ),
                                );
                              },
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 80,
                                    height: 80,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white,
                                    ),
                                    child: Center(
                                      child: Image.asset(
                                        currentCar['image'] ?? "",
                                        width: 50,
                                        height: 50,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Text(
                        'Popular Cars',
                        style: header,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    // Inside the _HomeScreenState class
                    SizedBox(
                      height: 180,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: carsData.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => CarDetailsScreen(
                                    carData: carsData[index],
                                  ),
                                ),
                              );
                            },
                            child: Hero(
                              tag: 'car_image_${carsData[index]['name']}',
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(right: 10, left: 10),
                                child: Container(
                                  width: 180,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(24),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          carsData[index]['image'],
                                          height: 90,
                                        ),
                                        const SizedBox(
                                          height: 12,
                                        ),
                                        Text(
                                          carsData[index]['name'],
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/mile.png',
                                              height: 16,
                                            ),
                                            const SizedBox(
                                              width: 4,
                                            ),
                                            Text(
                                              '38 miles',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(
                          16,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Previous Hot Cars',
                                  style: subheader,
                                ),
                                Text(
                                  'Checkout Our Hot Cars ',
                                  style: small,
                                ),
                              ],
                            ),
                            ElevatedButton(
                              style: buttonPrimary,
                              onPressed: () {},
                              child: Text(
                                'Get Info',
                                style: labelPrimary,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'New Cars',
                            style: header,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          height: 300,
                          child: ListView.builder(
                            itemCount: newCarsData.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CarDetailsScreen(
                                          carData: newCarsData[index],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    padding: const EdgeInsets.only(
                                      top: 10,
                                      left: 10,
                                      bottom: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              newCarsData[index]['image'],
                                              height: 50,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  newCarsData[index]['name'],
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Row(
                                                  children: [
                                                    Image.asset(
                                                      'assets/mile.png',
                                                      height: 16,
                                                    ),
                                                    const SizedBox(
                                                      width: 4,
                                                    ),
                                                    Text(
                                                      '99 miles',
                                                      style: TextStyle(
                                                          fontSize: 14),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                newCarsData[index]['price'],
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Row(
                                                // ignore: prefer_const_literals_to_create_immutables
                                                children: [
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Text(
                                                    'Per Day',
                                                    style: TextStyle(
                                                        color: Colors.red,
                                                        fontSize: 10),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
