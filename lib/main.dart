import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<DateTime> dates = [DateTime.now(), DateTime.utc(1998, 2, 11)]; //List of dates

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: dates.length,
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('${DateFormat.yMd().add_jm().format(dates[index])}'),
              ),

                if(index < dates.length - 1)
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text('${dates[index].difference(dates[index + 1]).inHours} hours  ${dates[index].difference(dates[index + 1]).inMinutes.remainder(60)} minute'),
               )

              ],
            );
          },
        ),
      ),
    );
  }

  
}
