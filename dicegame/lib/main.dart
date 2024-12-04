import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    DevicePreview(
      builder: (context)=>
    MyApp()
    )
  );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice rollerl',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'The Dice Roller'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int leftdice = 1;
  int rightdice = 1;
  int results = 2;

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 37, 57, 69),
    
      appBar: AppBar(
       
        backgroundColor:const Color.fromARGB(255, 74, 92, 106),
       
        title: Center(
          child: Text(
            widget.title,
            style: const TextStyle(
            fontSize: 30,
            color: Colors.white,
            letterSpacing: 1.5,
            ),
            ),),
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
             
              children: <Widget>[
            
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                      
                      },
                      child: Image.asset('images/dice_$leftdice.png')
                      )
                    ),
                  Expanded(
                    child: TextButton(
                      onPressed: (){
                
                      
                      },
                      child: Image.asset('images/dice_$rightdice.png')
                      )
                  ),
                
              
              ],
              
            ),
            const SizedBox(
              height: 100,
              width: 100,
            ),
            Text(
              "you got a $results",
              style: const TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.w400,
               
              ),
            )
          ],

        ),
        
      ),
      floatingActionButton: SizedBox(
        height: 100,
        width: 300,
        child: FloatingActionButton.extended(
        
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25)
          ),
          label: const Text("Shuffle"),
          // const icon: Icon(Icons.refresh),
        
          backgroundColor: const Color.fromARGB(255, 204, 208, 207),
          foregroundColor: const Color.fromARGB(255, 17, 33, 45),
          extendedTextStyle: const TextStyle(
            
            fontSize: 40,
          ),
          onPressed:() {
             setState(() 
             {
                leftdice = Random().nextInt(6)+1;
                rightdice = Random().nextInt(6)+1;
                results = leftdice + rightdice ;
              }
              );
              
          } ,
           
        ),
      ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    
    );
    
  }
}
