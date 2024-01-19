import 'package:flutter/material.dart';
import 'package:rent_app/styles/color.dart';
import 'package:rent_app/styles/typo.dart';

class BillingInformationScreen extends StatelessWidget {
  final Map<String, dynamic> carData;
  final DateTime startDate;
  final DateTime endDate;

  const BillingInformationScreen({
    required this.carData,
    required this.startDate,
    required this.endDate,
  });

  double calculateRentalCost() {
    String priceString =
        carData['price'].toString().replaceAll('Rs.', '').replaceAll(',', '');
    double pricePerDay = double.parse(priceString);
    int rentalDays = endDate.difference(startDate).inDays + 1;
    return pricePerDay * rentalDays;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Billing Information',
          style: header,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Center(
                    child: Image.asset(
                      carData['image'],
                      height: 200,
                      width: MediaQuery.of(context).size.width - 32,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Total Rent: Rs.${calculateRentalCost().toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                startDate.isAfter(DateTime.now())
                    ? 'Days left to start: ${startDate.difference(DateTime.now()).inDays} days'
                    : 'Ends in: ${endDate.difference(DateTime.now()).inDays} days',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 32),
              buildTextField('Name', Icons.person),
              const SizedBox(height: 16),
              buildTextField('Address', Icons.location_on),
              const SizedBox(height: 16),
              buildTextField('Phone Number', Icons.phone, TextInputType.phone),
              const SizedBox(height: 32),
              Text(
                'Additional Information:',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Please provide accurate information for a smooth rental process.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 32),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 30),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(90, 45),
                      backgroundColor: blue,
                      elevation: 0,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Confirm',
                      style: labelPrimary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTextField(String label, IconData icon,
      [TextInputType inputType = TextInputType.text]) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: const BorderSide(color: Colors.blue),
        ),
        fillColor: Colors.grey[300],
        filled: true,
      ),
      keyboardType: inputType,
    );
  }
}
