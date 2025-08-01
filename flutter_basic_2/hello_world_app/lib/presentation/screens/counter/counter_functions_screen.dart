import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}


class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(     
      appBar: AppBar(
        title: const Text('Counter Functions',
            style: TextStyle(
              color: Colors.white)
            ),

        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 109, 118, 165),
        actions: [
          IconButton(onPressed: (){
            setState(() {
              clickCounter=0;
            });
          }, icon: const Icon(Icons.refresh_rounded))
        ],
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
    floatingActionButton: Column(
      
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          shape: CircleBorder(),
          onPressed: () {
        setState(() {
          clickCounter++;
        });

        // Add your onPressed logic here
      },
      child: Icon(Icons.plus_one),
    ),
    SizedBox(height: 10),
    FloatingActionButton(
      shape: CircleBorder(),
      onPressed: () {
        setState(() {
          clickCounter--;
        });

        // Add your onPressed logic here
      },
      child: Icon(Icons.exposure_minus_1),
    )
      ],
    )
    );
  }
}