import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LoadStartScreen extends StatefulWidget {
  const LoadStartScreen({Key? key}) : super(key: key);

  @override
  _LoadStartScreenState createState() => _LoadStartScreenState();
}

class _LoadStartScreenState extends State<LoadStartScreen> {
  @override

  Widget createCard(training, day, duration, time){
    return Card(
      color: Colors.cyan[50],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: ListTile(
        onTap: () async {
          await Navigator.pushNamed(context, '/end');},
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(15.0, 15.0, 0, 0),
          child: Icon(
            Icons.ondemand_video_rounded,
            color: Colors.black,
            size: 40.0,
          ),
        ),
        title: Column(
          children: [
            //title
            Text(
              'Training session $training \n',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize:15.0,
                color: Colors.black)
            ),
            //day
            Text(
                '$day',
                style: TextStyle(color: Colors.black, fontSize:15.0)
            ),
            //duration
            Text(
                'Duration: $duration',
                style: TextStyle(color: Colors.black, fontSize:15.0)
            ),
            //hour
            Text(
                'Time: $time',
                style: TextStyle(color: Colors.black, fontSize:15.0)
            ),
          ],
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //button to be clicked to go to the trainng page
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.orange[600],
                padding: EdgeInsets.all(17.0),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              ),
              onPressed:() async {
                await Navigator.pushNamed(context, '/training');},
              child: const Text('Start training',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.black)),
            ),
            //spacing between elements
            SizedBox(height: 20.0),
            SizedBox(
                //graph with overview of trainings
            ),
            //spacing between elements
            SizedBox(height: 20.0),
            //past trainings presented in a ListView
            SizedBox(
              height: 400.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30.0),
                    child: Text(
                      'Overview of past training sessions',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.cyan[50]
                      )),
                  ),
                  createCard(1, 'Monday', '2h 35min', '15:30'),
                  createCard(2, 'Tuesday', '1h 07min', '18:12'),
                  createCard(3, 'Thursday', '2h 01min', '16:27'),
                  createCard(4, 'Sunday', '0h 56min', '18:02'),
                  createCard(5, 'Monday', '1h 05min', '16:34'),
                  createCard(6, 'Wednesday', '1h 10min', '15:30'),
                ]
            ),
              ),
            ),
          ]
        ),
        ),
      );
  }
}
