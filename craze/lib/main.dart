import 'package:craze/components/barchart/bar_chart.dart';
import 'package:craze/components/barchart/barchart_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffF6F6F6),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Barchart(
                        color: Color(0xffFFC437),
                        display: DisplayType.average,
                        icon: Icon(CupertinoIcons.back,
                            color: Color(0xffFFC437), size: 20),
                        title: "Immunity ",
                        subTitle: "Average",
                        data: [
                          BarchartData(value: 2450, label: 'label'),
                          BarchartData(value: 5450, label: 'label'),
                          BarchartData(value: 6045, label: 'label'),
                          BarchartData(value: 4450, label: 'label'),
                          BarchartData(value: 4450, label: 'label'),
                          BarchartData(value: 845, label: 'label'),
                          BarchartData(value: 6454, label: 'label'),
                          BarchartData(value: 40, label: 'label'),
                          BarchartData(value: 7455, label: 'label'),
                          BarchartData(value: 2450, label: 'label'),
                          BarchartData(value: 4450, label: 'label'),
                          BarchartData(value: 4455, label: 'label'),
                          BarchartData(value: 40, label: 'label'),
                          BarchartData(value: 4450, label: 'label'),
                          BarchartData(value: 4450, label: 'label'),
                          BarchartData(value: 40, label: 'label'),
                          BarchartData(value: 4450, label: 'label'),
                          BarchartData(value: 40, label: 'label'),
                          BarchartData(value: 9450, label: 'label'),
                          BarchartData(value: 9450, label: 'label'),
                          BarchartData(value: 9450, label: 'label'),
                          BarchartData(value: 4045, label: 'label'),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
