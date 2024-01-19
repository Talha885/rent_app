import 'package:flutter/material.dart';
import 'package:rent_app/styles/typo.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  List pendingCars = [
    {
      'name': 'BMW X6 M',
      'image': 'assets/bmw1.png',
      'description': 'Luxurious and powerful SUV with dynamic design.',
      'price': 10000,
    },
  ];

  List completedCars = [
    {
      'name': 'BMW X2',
      'image': 'assets/bmw2.png',
      'description': 'Compact and stylish crossover with advanced features.',
      'price': 11000,
    },
  ];

  List cancelledCars = [
    {
      'name': 'BMW X6',
      'image': 'assets/bmw3.png',
      'description': 'Sporty and elegant SUV offering a smooth ride.',
      'price': 12000,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xFFF5F5F5),
        appBar: AppBar(
          backgroundColor: const Color(0xFFF5F5F5),
          title: Center(
              child: Text(
            'Orders',
            style: header,
          )),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Pending'),
              Tab(text: 'Completed'),
              Tab(text: 'Cancelled'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Pending Cars
            _buildOrdersList(pendingCars),

            // Completed Cars
            _buildOrdersList(completedCars),

            // Cancelled Cars
            _buildOrdersList(cancelledCars),
          ],
        ),
      ),
    );
  }

  Widget _buildOrdersList(List cars) {
    return ListView.builder(
      itemCount: cars.length,
      itemBuilder: (context, index) {
        return Card(
          elevation: 4,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: Colors.grey[4000],
          child: ListTile(
            contentPadding: const EdgeInsets.all(16),
            leading: Image.asset(
              cars[index]['image'],
              height: 140,
              width: 100,
              fit: BoxFit.contain,
            ),
            title: Text(
              cars[index]['name'],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 8),
                Text(
                  'Price: Rs. ${cars[index]['price']}',
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  cars[index]['description'],
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
