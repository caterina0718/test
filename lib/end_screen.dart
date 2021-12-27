import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class LoadTrainingOverview extends StatelessWidget {
  const LoadTrainingOverview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[900],
      appBar: AppBar(
        backgroundColor: Colors.cyan[100],
        //press button to go back to the previous page
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
            onPressed: () async {
              Navigator.pop(context);} ,
            color: Colors.cyan[900],
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            //safeBox with video, safe box with video duratin, safe box with date and time, safeBox with improvements + paddings in between
          ],
        ),
      ),
    );
  }
}
