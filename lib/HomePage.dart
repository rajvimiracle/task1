
import 'package:flutter/material.dart';

class FactorCalculator extends StatefulWidget {
   FactorCalculator({super.key});

  @override
  State<FactorCalculator> createState() => _FactorCalculatorState();
}


class _FactorCalculatorState extends State<FactorCalculator> {
  TextEditingController numController = TextEditingController();
  List<int> factors = [];

  void findfactors(int number){
    factors.clear();
    for(int i =1; i<number; i++){
      if(number % i==0){
        factors.add(i);
      }
    }
    setState((){});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Factor Calculator",style: TextStyle(fontSize: 20,color: Colors.white),),
        backgroundColor: Colors.pink,
      ),
      body: SafeArea(
       child: Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: TextFormField(
               controller: numController,
               decoration: InputDecoration(
                 border: UnderlineInputBorder(),
               ),
             ),
           ),
           SizedBox(height: 20,),
           ElevatedButton(onPressed: () {
           int number = int.tryParse(numController.text) ?? 0;
           findfactors(number);

           }, child: Text("FIND ALL FACTORS"),),
           SizedBox(height: 20.0,),
           Column(
             children: [
               Text(' Factors: ${factors.isEmpty ?
               "" :
               factors.join(",")}'
                 ,style: TextStyle(fontSize: 18),),
             ],
           ),
         ],
       ),
      ),
    );
  }
}
