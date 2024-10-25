import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List dummy untuk produk dan layanan petshop
  final List<Map<String, String>> _products = [
    {
      'name': 'Dog Food',
      'description': 'High-quality dog food for your pets.',
      'image': 'assets/dogfood.jpg'
    },
    {
      'name': 'Cat Toys',
      'description': 'Fun and engaging toys for your cats.',
      'image': 'assets/cattoys.jpg'
    },
    {
      'name': 'Fish Tank',
      'description': 'A small and decorative fish tank.',
      'image': 'assets/fishtank.jpg'
    },
  ];

  final List<Map<String, String>> _services = [
    {
      'name': 'Grooming',
      'description': 'Professional grooming services for your pets.',
    },
    {
      'name': 'Veterinary',
      'description':
          'Consult our certified veterinarian for pet health checkups.',
    },
    {
      'name': 'Pet Boarding',
      'description': 'Safe and secure boarding services for your pets.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Petshop Home'),
        backgroundColor: const Color.fromARGB(255, 17, 119, 147),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Bagian Produk
              Text(
                'Our Products',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              SizedBox(
                height: 200.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _products.length,
                  itemBuilder: (context, index) {
                    final product = _products[index];
                    return Card(
                      margin: const EdgeInsets.only(right: 16.0),
                      child: SizedBox(
                        width: 160.0,
                        child: Column(
                          children: [
                            Image.asset(
                              product['image']!,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                product['name']!,
                                style: Theme.of(context).textTheme.titleMedium,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              product['description']!,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium
                                  ?.copyWith(color: Colors.grey[600]),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 24.0),
              // Bagian Layanan
              Text(
                'Our Services',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              Column(
                children: _services.map((service) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 16.0),
                    child: ListTile(
                      title: Text(service['name']!,
                          style: Theme.of(context).textTheme.titleMedium),
                      subtitle: Text(service['description']!,
                          style: Theme.of(context).textTheme.bodyMedium),
                      leading: const Icon(
                        Icons.pets,
                        size: 40,
                        color: Color.fromARGB(255, 17, 119, 147),
                      ),
                    ),
                  );
                }).toList(),
              ),
              const SizedBox(height: 24.0),
              // Bagian Navigasi
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman lainnya, misalnya booking layanan
                  Navigator.pushNamed(context, '/booking');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: const Color.fromARGB(255, 75, 78, 78),
                ),
                child: const Text('Book a Service'),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman profil pengguna
                  Navigator.pushNamed(context, '/profile');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  backgroundColor: Colors.grey[600],
                ),
                child: const Text('Go to Profile'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
