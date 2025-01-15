import 'package:flutter/material.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: [
              // Image at the top
              Container(
                width: double.infinity,
                height: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/image.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Gebeta Feast title
              Text(
                'Gebeta Feast',
                style: TextStyle(
                  fontSize: 52,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 10),

              // Paragraph
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  'Your number one app for delicious meals, recipes and restaurant orders!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: const Color.fromARGB(255, 123, 122, 122),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Get Started Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.7,  
                  child: ElevatedButton(
                    onPressed: () {
                      // Handle button action
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.symmetric(vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
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
}
