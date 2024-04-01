// import 'dart:convert';
//
// import 'package:api_get/modal.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// // class next_ extends StatefulWidget {
// //   const next_({super.key});
// //
// //   @override
// //   State<next_> createState() => _next_State();
// // }
// //
// // class _next_State extends State<next_> {
// //
// //
// //   late Future<breeds> _future;
// //   void initstate(){
// //     super.initState();
// //     _future=hey();
// //   }
// //
// //   Future<breeds> hey()async{
// //     var res=await http.get(Uri.parse("https://dog.ceo/api/breeds/image/random"));
// //     return breeds.fromJson(jsonDecode(res.body));
// //   }
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: FutureBuilder(
// //         future: hey(),
// //         builder: (BuildContext context, snapshot){
// //           if(snapshot.hasData){
// //             return Column(
// //               children: [
// //                 Image(image: NetworkImage(snapshot.data!.message.toString())),
// //                 Text(snapshot.data!.status.toString()),
// //               ],
// //             );
// //           }else if(snapshot.hasError){
// //             return Text('${snapshot.error}');
// //           }return CircularProgressIndicator();
// //         },
// //       ),
// //     );
// //   }
// // }
//
//
// class sample extends StatefulWidget {
//   const sample({super.key});
//
//   @override
//   State<sample> createState() => _sampleState();
// }
//
// class _sampleState extends State<sample> {
//
//
//   Future<List<Country>> bhuvan()async{
//     var res= await http.get(Uri.parse("https://api.nationalize.io?name=nathaniel"));
//     var data= jsonDecode(res.body)["country"];
//     return (data as List).map((obj) => Country.fromJson(obj)).toList();
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           FutureBuilder(
//               future: bhuvan(),
//               builder: (BuildContext context, snapshot){
//                 List<Country> list =snapshot.data!;
//                 if(snapshot.hasData){
//                   return Container(
//                     height: 800,
//                     child: ListView.builder(
//                       itemCount: list.length,
//                         itemBuilder: (context,int index){
//                       return ListTile(
//                         title: Text(list[index].countryId.toString()),
//                       );
//                     }),
//                   );
//                 }else if(snapshot.hasError){
//                   return Text('${snapshot.error}');
//                 }return CircularProgressIndicator();
//               }
//           )
//         ],
//       ),
//     );
//   }
// }
//
