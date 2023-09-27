import 'package:flutter/material.dart';
// import 'resource/rounded_button.dart';
import 'resource/appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBarCustom(),
      ),
      backgroundColor: Colors.white,
      body:
          // Body for apps
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
            // Text for Welcome to
            const Text(
              'Pemilihan Game',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
                // fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 400.0,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                pauseAutoPlayOnTouch: true,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    // current = index;
                  });
                },
              ),
              items: const [
                // using image from assets
                Image(
                  image: AssetImage('assets/images/1.jpg'),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('assets/images/2.jpg'),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('assets/images/3.jpg'),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('assets/images/4.jpg'),
                  fit: BoxFit.cover,
                ),
                Image(
                  image: AssetImage('assets/images/5.jpg'),
                  fit: BoxFit.cover,
                ),
              ],
            ),

            // rows of cards
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                // using card
                Card(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/1.jpg'),
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Game 1',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Text(
                        'Deskripsi Game 1',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/2.jpg'),
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Game 2',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Text(
                        'Deskripsi Game 2',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    children: <Widget>[
                      Image(
                        image: AssetImage('assets/images/3.jpg'),
                        fit: BoxFit.cover,
                      ),
                      const Text(
                        'Game 3',
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                      const Text(
                        'Deskripsi Game 3',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // material button with text "Cari Teman" in middle of the screen
            Container(
              margin: const EdgeInsets.only(top: 20.0),
              // limit container
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: const Text(
                  'Cari Teman',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Colors.blueAccent,
                minWidth: 200.0,
                height: 42.0,
              ),
            ),
          ]),

      // using carousel slider
    );
  }
}
