import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Listview Bejarano 1154',
              style: TextStyle(color: Colors.white, fontSize: 25)),
          backgroundColor: Color(0xff0a8714),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.separated(
                itemCount: 10,
                separatorBuilder: (context, index) => Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    color: Color(
                        0xffa4a4a4), // Light gray background for separator
                    borderRadius: BorderRadius.circular(8), // Rounded corners
                  ),
                  alignment: Alignment.centerLeft, // Align text to the left
                  child: Text(
                    'Separador ${index + 1}', // Dynamic separator text in Spanish
                    style: TextStyle(
                      color: Color(0xffffffff), // White text
                      fontSize: 14,
                    ),
                  ),
                ),
                itemBuilder: (context, index) {
                  // Shopping list items in Spanish
                  final shoppingList = [
                    'Manzanas',
                    'Leche',
                    'Pan',
                    'Huevos',
                    'Arroz',
                    'Pollo',
                    'Queso',
                    'Tomates',
                    'Cebollas',
                    'Aceite',
                  ];
                  return Container(
                    margin: EdgeInsets.symmetric(
                        vertical: 4), // Reduced spacing between items
                    decoration: BoxDecoration(
                      color:
                          Color(0xfff0fff2), // Light green background for items
                      borderRadius: BorderRadius.circular(8), // Rounded corners
                    ),
                    child: ListTile(
                      title: Text(
                        shoppingList[index], // Spanish shopping list items
                        style: TextStyle(fontSize: 22),
                      ),
                    ),
                  );
                },
              ),
            ),
            // Black rectangular container at the bottom
            Container(
              height: 40, // Height of the navigation bar
              color: Colors.black, // Black background
              padding: EdgeInsets.symmetric(
                  horizontal: 80), // Reduced horizontal padding
              margin: EdgeInsets.only(
                  top: 4), // Bring the container closer to the list
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween, // Space out the icons
                children: [
                  // White square on the left
                  Container(
                    width: 14, // Smaller width
                    height: 14, // Smaller height
                    decoration: BoxDecoration(
                      color: Colors.white, // White color
                      borderRadius:
                          BorderRadius.circular(4), // Slightly rounded corners
                    ),
                  ),
                  // White circle in the center
                  Container(
                    width: 14, // Smaller width
                    height: 14, // Smaller height
                    decoration: BoxDecoration(
                      color: Colors.white, // White color
                      shape: BoxShape.circle, // Circle shape
                    ),
                  ),
                  // White triangle on the right
                  ClipPath(
                    clipper:
                        TriangleClipper(), // Custom clipper for the triangle
                    child: Container(
                      width: 14, // Smaller width
                      height: 14, // Smaller height
                      color: Colors.white, // White color
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Custom clipper for the triangle
class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0); // Top center
    path.lineTo(size.width, size.height); // Bottom right
    path.lineTo(0, size.height); // Bottom left
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
