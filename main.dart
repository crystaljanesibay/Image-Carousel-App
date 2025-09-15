import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Image Carousel App!',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  final List imageUrls = [
    'https://tse1.mm.bing.net/th/id/OIP.NSerH33uoDPF90Z3v5tQnQHaKc?pid=ImgDet&w=474&h=668&rs=1&o=7&rm=1',
    'https://tse3.mm.bing.net/th/id/OIP.VcXD030AClxk-DN_1a49CQHaKb?pid=ImgDet&w=474&h=667&rs=1&o=7&rm=2',
    'https://tse3.mm.bing.net/th/id/OIP.pK4yv9CxN8LRawRl0wV18QHaK9?pid=ImgDet&w=474&h=701&rs=1&o=7&rm=3',
    'https://tse2.mm.bing.net/th/id/OIP.7rqmy07NCbIngaVHSSLw9AHaLH?pid=ImgDet&w=474&h=711&rs=1&o=7&rm=4',
    'https://tse4.mm.bing.net/th/id/OIP.EEl-OZNh-PP7VdExb1D19QAAAA?w=400&h=600&rs=1&pid=ImgDetMain&o=7&rm=5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Photo Gallery'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: imageUrls.length,
              itemBuilder: (context, index) {
                return Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      imageUrls[index],
                      width: 400,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text('Image Gallery',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),

                SizedBox(height: 8),
                Text('These are some amazing Photos!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[600],
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
