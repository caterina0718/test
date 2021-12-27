import 'package:flutter/material.dart';


class StartTraining extends StatelessWidget {
  const StartTraining({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Waiting for camera feed. Please go back.',
                  style: const TextStyle(fontSize: 20.0, color: Colors.grey),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.grey
                  ),
                  onPressed:() async {
                    Navigator.pop(context);},
                  child: const Text('Ok',
                    style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.black,
                    )),
                )
              ]
          ),
        )
    );
  }
}

