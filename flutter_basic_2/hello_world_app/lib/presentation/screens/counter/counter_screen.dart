import 'package:flutter/material.dart';

class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

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
            children: [
              Text('100',
                    style: TextStyle(fontSize: 160,fontWeight: FontWeight.w100),
                    ),
              Text('Cantidad de clicks',
                    style: TextStyle(fontSize: 25),),
            ],
          ),
        ),   
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        // Add your onPressed logic here
      },
      child: Icon(Icons.plus_one),
    )
    );
  }
}