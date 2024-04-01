// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// import 'modal.dart';
//
// class next extends StatefulWidget {
//   const next({super.key});
//
//   @override
//   State<next> createState() => _nextState();
// }
//
// class _nextState extends State<next> {
//
//   Future<coindesk> boo()async{
//     var res=await http.get(Uri.parse("https://api.coindesk.com/v1/bpi/currentprice.json"));
//     return coindesk.fromJson(jsonDecode(res.body));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: boo(),
//         builder: (BuildContext context, snapshot) {
//           if ( snapshot.hasData){
//             return Center(
//               child: Column(
//                 children: [
//                   Text(snapshot.data!.time!.updated.toString()),
//                   Text(snapshot.data!.time!.updatedISO.toString()),
//                   Text(snapshot.data!.time!.updateduk.toString()),
//                   SizedBox(height: 30,),
//                   Text(snapshot.data!.bpi!.uSD!.rateFloat.toString()),
//                   Text(snapshot.data!.bpi!.uSD!.code.toString()),
//                   Text(snapshot.data!.bpi!.uSD!.rate.toString()),
//                   Text(snapshot.data!.bpi!.uSD!.symbol.toString()),
//                   SizedBox(height: 30,),
//                   Text(snapshot.data!.bpi!.gBP!.rateFloat.toString()),
//                   Text(snapshot.data!.bpi!.gBP!.code.toString()),
//                   Text(snapshot.data!.bpi!.gBP!.rate.toString()),
//                   Text(snapshot.data!.bpi!.gBP!.symbol.toString()),
//                   SizedBox(height: 30,),
//                   Text(snapshot.data!.bpi!.eUR!.rateFloat.toString()),
//                   Text(snapshot.data!.bpi!.eUR!.code.toString()),
//                   Text(snapshot.data!.bpi!.eUR!.rate.toString()),
//                   Text(snapshot.data!.bpi!.eUR!.symbol.toString()),
//                 ],
//               ),
//             );
//           }else if(snapshot.hasError){
//             return Text('${snapshot.error}');
//           }return CircularProgressIndicator();
//         }),
//
//     );
//   }
// }
