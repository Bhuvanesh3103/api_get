// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'modal.dart';
// class api extends StatefulWidget {
//   const api({super.key});
//
//   @override
//   State<api> createState() => _apiState();
// }
//
// class _apiState extends State<api> {
//
//   // late Future<Catfact> _future;
//   //
//   //
//   // void initState(){
//   //   super.initState();
//   //   _future = fetch();
//   // }
//
//   // Future<sample> fetch() async {
//   //   var response = await http.get(Uri.parse("https://catfact.ninja/fact"));
//   //   return sample.fromJson(jsonDecode(response.body));
//   // }
//
//
//   Future<sample> fetch() async{
//     var response= await http.get(Uri.parse("https://www.boredapi.com/api/activity"));
//     return sample.fromJson(jsonDecode(response.body));
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           // FutureBuilder(
//           //     future:_future,
//           //     builder: (BuildContext context, snapshot){
//           //       if(snapshot.hasData){
//           //         return Center(
//           //           child: Column(
//           //             children: [
//           //               Text(snapshot.data!.fact.toString()),
//           //               Text(snapshot.data!.length.toString()),
//           //             ],
//           //           ),
//           //         );
//           //       } else if(snapshot.hasError){
//           //         return Text("${snapshot.error}");
//           //       } return CircularProgressIndicator();
//           //     }
//           // )
//
//           FutureBuilder(
//               future: fetch(),
//               builder: (BuildContext context, snapshot){
//                 if(snapshot.hasData){
//                   return Center(
//                     child:Column(
//                       children: [
//                        Text(snapshot.data!.activity.toString()),
//                         Text(snapshot.data!.type.toString()),
//                         Text(snapshot.data!.price.toString()),
//                         Text(snapshot.data!.accessibility.toString()),
//                         Text(snapshot.data!.key.toString()),
//                       ],
//                     ) ,
//                   );
//                 }else if(
//                 snapshot.hasError
//                 ){
//                   return Text('${snapshot.error}');
//                 }return CircularProgressIndicator();
//               })
//         ],
//       ),
//     );
//   }
// }
