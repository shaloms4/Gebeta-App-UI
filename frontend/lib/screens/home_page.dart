import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: AppBar(
        backgroundColor: Color(0xFFF0F0F0),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Center(
          child: Text(
            'Fast Food',
            style: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          Icon(Icons.search, color: Colors.black),
          SizedBox(width: 10),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: Icon(Icons.shopping_cart, color: Colors.black),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 3 / 4,
          children: [
            _foodItem('food1.png', 'Burger'),
            _foodItem('food2.png', 'Pizza'),
            _foodItem('food3.png', 'Pasta'),
            _foodItem('food4.png', 'Fries'),
            _foodItem('food5.png', 'Tacos'),
            _foodItem('food6.png', 'Salad'),
            _foodItem('food7.png', 'Chicken'),
            _foodItem('food8.png', 'Ice Cream'),
          ],
        ),
      ),
    );
  }

  Widget _foodItem(String imageName, String foodName) {
    return Column(
      children: [
        Container(
          height: 120,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage('assets/$imageName'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          foodName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '4.0',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            SizedBox(width: 4),
            Row(
              children: List.generate(4, (starIndex) {
                return Icon(Icons.star, size: 16, color: Colors.orange);
              }),
            ),
          ],
        ),
      ],
    );
  }
}
