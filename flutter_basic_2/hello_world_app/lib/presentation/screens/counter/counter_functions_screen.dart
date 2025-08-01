import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Functions',
          style: TextStyle(color: Colors.white),
        ),

        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 52, 163, 80),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded),
          ),
        ],
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
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
          CustomButton(icon: Icons.plus_one,
          onPressed: (){
            setState(() {
              clickCounter++;
            });
          },),
          SizedBox(height: 10),
          CustomButton(icon: Icons.refresh_rounded,
          onPressed: (){
            setState(() {
              clickCounter=0;
            });
          },),
          SizedBox(height: 10),
          CustomButton(icon:Icons.exposure_minus_1,
          onPressed: (){
            setState(() {
              if(clickCounter==0)return;
              clickCounter--;
            });
          },),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;
  const CustomButton({
    super.key,
    required this.icon, 
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: CircleBorder(),
      enableFeedback: true,
      onPressed:onPressed,
      elevation: 10,
      child: Icon(icon),
    );
  }
}
