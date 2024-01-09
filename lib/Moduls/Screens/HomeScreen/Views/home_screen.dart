import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:github/Moduls/Screens/HomeScreen/Model/all_data_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      body: FutureBuilder(
        future: rootBundle.loadString('data.json'),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            var decodedData = jsonDecode(snapshot.data!);
            List mapData = decodedData['allData'];
            List<AllData> allData =
                mapData.map((e) => AllData.fromJson(data: e)).toList();

            return ListView.builder(
              itemBuilder: (ctx, i) {
                return Container(
                  child: Text(allData[i].sanskrit),
                );
              },
              itemCount: allData.length,
            );
          }
          return Center(
            child: CircularProgressIndicator(
              color: Colors.brown,
            ),
          );
        },
      ),
    );
  }
}
