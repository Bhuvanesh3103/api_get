import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'modal.dart';
class link extends StatefulWidget {
  const link({super.key});

  @override
  State<link> createState() => _linkState();
}

class _linkState extends State<link> {
  
  
Future<List<Universe>>  fetch()async{
  var res= await http.get(Uri.parse('http://universities.hipolabs.com/search?country=United+States'));
  var data = jsonDecode(res.body);
  return (data as List).map((obj) => Universe.fromJson(obj)).toList();
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: fetch(),
        builder: (BuildContext context,snapshot){
          if(snapshot.hasData){
            List<Universe> list= snapshot.data!;
            return Container(
              height: 800,
              width: double.infinity,
              child: ListView.builder(
                itemCount: list.length,
                  itemBuilder: (context,int index){
                    return ListTile(
                      title: Row(
                        children: [
                          Text(list[index].alphaTwoCode.toString()),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Text(list[index].country.toString()),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(list[index].webPages.toString()),
                          ),
                        ],
                      ),

                    );
                  }),
            );
          }else if(snapshot.hasError){
            return Text("${snapshot.error}");
          }return CircularProgressIndicator();
        },
      ),
    );
  }
}
