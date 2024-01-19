// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rent_app/screens/car_details_Screen.dart';
import 'package:rent_app/styles/typo.dart';

class BrandDetailsScreen extends StatelessWidget {
  final String brandId;

  const BrandDetailsScreen({Key? key, required this.brandId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cars = [];

    // Assign cars based on the brandId
    if (brandId == '1') {
      cars = [
        {
          'name': 'BMW X6 M',
          'image': 'assets/bmw1.png',
          'description': 'Luxurious and powerful SUV with dynamic design.',
          'price': 10000,
        },
        {
          'name': 'BMW X2',
          'image': 'assets/bmw2.png',
          'description':
              'Compact and stylish crossover with advanced features.',
          'price': 11000,
        },
        {
          'name': 'BMW X6',
          'image': 'assets/bmw3.png',
          'description': 'Sporty and elegant SUV offering a smooth ride.',
          'price': 12000,
        },
        {
          'name': 'BMW X5',
          'image': 'assets/bmw4.png',
          'description':
              'Versatile and spacious SUV with cutting-edge technology.',
          'price': 13000,
        },
      ];
    } else if (brandId == '2') {
      cars = [
        {
          'name': 'Ford Mustang GT Convertible',
          'image': 'assets/ford1.png',
          'description':
              'Classic convertible with a powerful engine for open-air driving.',
          'price': 12000,
        },
        {
          'name': 'Ford Mustang GT',
          'image': 'assets/ford2.png',
          'description':
              'Iconic muscle car known for its performance and style.',
          'price': 13000,
        },
        {
          'name': 'Ford Mustang Dark Horse',
          'image': 'assets/ford3.png',
          'description': 'Sleek and mysterious variant of the Mustang series.',
          'price': 15000,
        },
        {
          'name': 'Ford Explorer',
          'image': 'assets/ford4.png',
          'description':
              'Spacious and family-friendly SUV with advanced safety features.',
          'price': 18000,
        },
      ];
    }

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        flexibleSpace: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Brand Logo
            if (brandId == '1')
              Image.asset(
                'assets/bmwLogo.png',
                height: 40,
                width: 40,
                fit: BoxFit.cover,
              )
            else if (brandId == '2')
              Image.asset(
                'assets/fordLogo.png',
                height: 40,
                width: 60,
                fit: BoxFit.cover,
              ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              brandId == '1' ? 'BMW' : 'FORD',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: cars.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CarDetailsScreen(
                          carData: cars[index],
                        ),
                      ),
                    );
                  },
                  child: Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: ListTile(
                      contentPadding: EdgeInsets.all(16),
                      leading: Image.asset('${cars[index]['image']}',
                          height: 130, width: 100, fit: BoxFit.cover),
                      title: Text(
                        cars[index]['name'],
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 8),
                          Text(
                            'Price per day: ',
                            style: subheader,
                          ),
                          Text(
                            'Rs. ${cars[index]['price']}',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(cars[index]['description']),
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
    );
  }
}
