import 'package:flutter/material.dart';
import 'MedicineDetailsPage.dart';

class PharmacyPage extends StatefulWidget {
  @override
  _PharmacyPageState createState() => _PharmacyPageState();
}

class _PharmacyPageState extends State<PharmacyPage> {
  TextEditingController _searchController = TextEditingController();
  List<Medicine> _allMedicines = [
    Medicine(
      'Panadol',
      'Panadol is used for relief of mild to moderate pain such as headache, muscle ache, toothache, and backache. It is also used for reducing fever.',
      450,
      'assets/panadol.jpg',
    ),
    Medicine(
      'Calbo D',
      'Calbo D is a calcium and vitamin D3 supplement used to prevent or treat low blood calcium levels in people who do not get enough calcium from their diets.',
      320,
      'assets/calbod.jpg',
    ),
    Medicine(
      'OBH Combi',
      'OBH Combi is a cough syrup with antitussive and expectorant properties, used to relieve cough symptoms associated with the common cold or respiratory tract infections.',
      999,
      'assets/OBH Combi.jpg',
      isOnSale: true,
    ),
    Medicine(
      'Calbo D',
      'Calbo D is a calcium and vitamin D3 supplement used to prevent or treat low blood calcium levels in people who do not get enough calcium from their diets.',
      299,
      'assets/calbod.jpg',
      isOnSale: true,
    ),
  ];
  List<Medicine> _displayedMedicines = [];

  @override
  void initState() {
    super.initState();
    _displayedMedicines.addAll(_allMedicines);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pharmacy Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: _searchController,
                onChanged: _onSearchTextChanged,
                decoration: InputDecoration(
                  hintText: 'Search drugs, category...',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Order quickly with Prescription',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  // Handle uploading prescription
                },
                child: Text('Upload Prescription'),
              ),
              SizedBox(height: 24),
              Text(
                'Medicines',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              _buildMedicineCards(),
            ],
          ),
        ),
      ),
    );
  }

  void _onSearchTextChanged(String newText) {
    setState(() {
      _displayedMedicines.clear();
      if (newText.isEmpty) {
        _displayedMedicines.addAll(_allMedicines);
        return;
      }
      _allMedicines.forEach((medicine) {
        if (medicine.name.toLowerCase().contains(newText.toLowerCase())) {
          _displayedMedicines.add(medicine);
        }
      });
    });
  }

  Widget _buildMedicineCards() {
    return Column(
      children: _displayedMedicines.map((medicine) {
        return _buildProductCard(
          medicine.name,
          medicine.description,
          medicine.price,
          medicine.imagePath,
          isOnSale: medicine.isOnSale,
        );
      }).toList(),
    );
  }

  Widget _buildProductCard(String name, String description, int price, String imagePath, {bool isOnSale = false}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MedicineDetailsPage(
              name: name,
              description: description,
              price: price,
              imagePath: imagePath,
            ),
          ),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.asset(imagePath, height: 100),
              SizedBox(height: 8),
              Text(
                name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(description),
              SizedBox(height: 8),
              Text(
                'Price: $price TK',
                style: TextStyle(
                  color: isOnSale ? Colors.red : null,
                  fontWeight: isOnSale ? FontWeight.bold : null,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Medicine {
  final String name;
  final String description;
  final int price;
  final String imagePath;
  final bool isOnSale;

  Medicine(this.name, this.description, this.price, this.imagePath, {this.isOnSale = false});
}
