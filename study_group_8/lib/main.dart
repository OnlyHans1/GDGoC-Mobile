import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';
import 'package:study_group_8/model/destination.dart';
import 'widgets/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, String>> popularDestinations = [
    {
      'name': 'Braga',
      'description': 'Popular street in Bandung',
      'image': 'assets/images/braga.jpg',
      'location': 'Bandung, Indonesia',
      'price': '15K',
    },
    {
      'name': 'Malioboro',
      'description': 'Popular street in Yogyakarta',
      'image': 'assets/images/malioboro.png',
      'location': 'Yogyakarta, Indonesia',
      'price': '10K',
    },
    {
      'name': 'Monas',
      'description': 'Popular monument in Jakarta',
      'image': 'assets/images/monas.jpg',
      'location': 'Jakarta, Indonesia',
      'price': '20K',
    },
  ];

  final List<Destination> destinations = [
    Destination(
      name: 'Braga',
      description: 'Popular street in Bandung',
      location: 'Bandung, Indonesia',
      image: 'assets/images/braga.jpg',
      price: '15K',
      rating: 4.5,
      guest: 10,
      km: 10,
      minute: 10,
    ),
    Destination(
      name: 'Malioboro',
      description: 'Popular street in Yogyakarta',
      location: 'Yogyakarta, Indonesia',
      image: 'assets/images/malioboro.png',
      price: '10K',
      rating: 4.5,
      guest: 10,
      km: 10,
      minute: 10,
    ),
    Destination(
      name: 'Monas',
      description: 'Popular monument in Jakarta',
      location: 'Jakarta, Indonesia',
      image: 'assets/images/monas.jpg',
      price: '20K',
      rating: 4.5,
      guest: 10,
      km: 10,
      minute: 10,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Good Morning!',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                      ),
                      Text(
                        'Rhaihan Aditya',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  HugeIcon(
                      icon: HugeIcons.strokeRoundedNotification01, size: 35),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular Destinations',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.grey[800]
                      )
                      ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  final destination = destinations[index];
                  return CardMain(
                    name: destination.name,
                    description: destination.description,
                    location: destination.location,
                    image: destination.image,
                    price: destination.price,
                    destination: destination,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
