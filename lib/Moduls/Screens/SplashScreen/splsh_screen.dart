import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, 'home_screen');
    });
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: const Alignment(4, -1.4),
            child: Image.network(
              "https://ouch-cdn2.icons8.com/x6ptkyR7DBTDKr4Z0n8dmZWlqWnnd_TtViuuOJfl85w/rs:fit:368:407/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNjM4/L2MwMGM0ZjkxLThh/YmYtNDYyZS04YWRj/LWFhNzk1YTUxN2Vm/Mi5wbmc.png",
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.brown.shade100.withOpacity(0.7),
            child: Column(
              children: [
                const Expanded(
                  flex: 2,
                  child: SizedBox(),
                ),
                Expanded(
                  child: Container(
                    child: Image.asset('lib/Assets/splash.png'),
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    height: 100,
                    width: 300,
                    child: Column(
                      children: [
                        const Image(
                          image: NetworkImage(
                            'https://fontmeme.com/permalink/240109/7a84c0ba7ab0e2e9011a031fd7d02eac.png',
                          ),
                        ),
                        Divider(
                          color: Colors.brown.shade100,
                          thickness: 2,
                        ),
                      ],
                    ),
                  ),
                  // child: Text(
                  //   "Bhagwat Gita App",
                  //   style: TextStyle(
                  //       fontSize: 18,
                  //       letterSpacing: 3,
                  //       color: Colors.brown,
                  //       fontWeight: FontWeight.w500),
                  // ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
