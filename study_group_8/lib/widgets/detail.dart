import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  final String name;
  final String description;
  final String location;
  final String image;
  final String price;
  final double rating;
  final int guest;
  final int km;
  final int minute;

  Detail(
      {super.key,
      required this.name,
      required this.description,
      required this.location,
      required this.image,
      required this.price,
      required this.rating,
      required this.guest,
      required this.km,
      required this.minute});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 6,
          right: 6,
          top: 6,
          bottom: 32,
        ),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 450,
                  child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.3),
                                  shape: BoxShape.circle,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(3),
                                  child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
                height: 125,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Colors.grey[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(name,
                              style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  fontFamily: 'PlayfairDisplay')),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                text: price,
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              TextSpan(
                                text: '/Day',
                                style:
                                    TextStyle(fontSize: 16, color: Colors.grey),
                              ),
                            ]),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on, size: 14, color: Colors.grey),
                          Text(
                            location,
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.grey,
                            size: 14,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            '$minute mins',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '  |  ',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Icon(
                            Icons.social_distance,
                            color: Colors.grey,
                            size: 14,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            '$km km',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '  |  ',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Icon(
                            Icons.person,
                            color: Colors.grey,
                            size: 14,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            '$guest guest',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Text(
                            '  |  ',
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.grey,
                            size: 14,
                          ),
                          SizedBox(
                            width: 1,
                          ),
                          Text(
                            rating.toString(),
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 12,
            ),
            Container(
                height: 125,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 6,
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Colors.grey[100],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        description,
                        style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 12,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(24)),
              height: 50,
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: IconButton(
                    onPressed: () {},
                    icon: const Text('Book Now',
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
