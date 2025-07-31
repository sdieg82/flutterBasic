import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}


class _CounterScreenState extends State<CounterScreen> {
  int clickCounter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      appBar: AppBar(
        title: const Text('Counter Screen',
            style: TextStyle(
              color: Colors.white)
            ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            children:[
              Text('$clickCounter',
                    style: TextStyle(fontSize: 160,fontWeight: FontWeight.w100),
                    ),
                    ('$clickCounter' == '1')
                      ? Text('Click', style: TextStyle(fontSize: 25))
                      : Text('Clicks', style: TextStyle(fontSize: 25)),        
            ],
          ),
        ),   
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState(() {
          clickCounter++;
        });

        // Add your onPressed logic here
      },
      child: Icon(Icons.plus_one),
    )
    );
  }
}