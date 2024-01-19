import 'package:flutter/material.dart';
import 'package:rent_app/screens/brand_details.dart';

import 'package:rent_app/styles/typo.dart';

class MyBrands extends StatefulWidget {
  const MyBrands({Key? key}) : super(key: key);

  @override
  State<MyBrands> createState() => _MyBrandsState();
}

class _MyBrandsState extends State<MyBrands> {
  final List brandData = [
    {'id': '1', 'name': 'BMW', 'image': 'assets/bmwLogo.png'},
    {'id': '2', 'name': 'Ford', 'image': 'assets/fordLogo.png'},
    {'id': '3', 'name': 'Jaguar', 'image': 'assets/JaguarLogo.png'},
    {'id': '4', 'name': 'Tesla', 'image': 'assets/teslaLogo.png'},
    {'id': '5', 'name': 'Toyota', 'image': 'assets/toyotaLogo.png'},
    {'id': '6', 'name': 'Honda', 'image': 'assets/hondaLogo.png'},
    {'id': '7', 'name': 'Audi', 'image': 'assets/audiLogo.png'},
    {'id': '8', 'name': 'Suzuki', 'image': 'assets/suzukiLogo.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Brands',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Row(
                children: [
                  Text('Categories', style: header),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 15.0,
                childAspectRatio: 0.7,
                mainAxisSpacing: 15.0,
              ),
              itemCount: brandData.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 240,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BrandDetailsScreen(
                                  brandId: brandData[index]['id']),
                            ),
                          );
                        },
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Image.asset(
                              brandData[index]['image'],
                              width: 60,
                              height: 80,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        brandData[index]['name'],
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
