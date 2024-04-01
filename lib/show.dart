import 'dart:convert';
import 'package:api_get/test.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class show extends StatefulWidget {
  const show({super.key});

  @override
  State<show> createState() => _showState();
}

class _showState extends State<show> {


  Future<List<Entries>> fetch() async {
    var res = await http.get(Uri.parse("https://api.publicapis.org/entries"));
    var data = jsonDecode(res.body)["entries"];
    return (data as List).map((obj) => Entries.fromJson(obj)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FutureBuilder(
              future: fetch(),
              builder: (BuildContext context, snapshot){
                if(snapshot.hasData){
                  List<Entries> list = snapshot.data!;
                  return Container(
                    height: 800,
                    child: ListView.builder(
                      itemCount:list.length,
                        itemBuilder: (context, int index){
                        return ListTile(
                          title: Text(list![index].description.toString()),
                        );
                        }
                    ),
                  );
                } else if(snapshot.hasError){
                  return Text("${snapshot.error}");
                } return CircularProgressIndicator();
              })
        ],
      ),
    );
  }
}
