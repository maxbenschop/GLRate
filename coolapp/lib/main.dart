import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'GLRate',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('GLRate'),
        backgroundColor: Color(0xFF4CAF50),
      ),
      child: Container(
        color: const Color(0xFFF5F5F5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Card(
                elevation: 5.0,
                child: SizedBox(
                  width: 350,
                  height: 450,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/test.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AnimatedPositioned(
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOut,
                        left: 0,
                        bottom: 0,
                        right: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [0.0, 0.6, 1.0],
                              colors: [
                                Colors.black.withOpacity(0.0),
                                Colors.black.withOpacity(0.3),
                                Colors.black.withOpacity(0.5),
                              ],
                            ),
                          ),
                          padding: const EdgeInsets.all(16),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: [
                                  Text(
                                    'Max,',
                                    style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  SizedBox(
                                      width: 6), // Adjust the spacing as needed
                                  Text(
                                    '18',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                  height:
                                      4), // Adjust the height to increase the white space

                              Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.building_2_fill,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(
                                      width: 8), // Adjust the spacing as needed
                                  Text(
                                    'Grafisch Lycem Rotterdam',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 2),
                              Row(
                                children: [
                                  Icon(
                                    CupertinoIcons.book_fill,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                  SizedBox(width: 8),
                                  Text(
                                    'Software Developer',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              const Spacer(),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
