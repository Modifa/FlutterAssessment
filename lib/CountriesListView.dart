import 'dart:ffi';
import 'package:countires/models/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter_svg/flutter_svg.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<List<Countries>> _getCountries() async {
    var data = await http.get("https://restcountries.eu/rest/v2/region/africa");
    var jsonData = json.decode(data.body);

    List<Countries> countries = [];
    for (var c in jsonData) {
      Countries country = Countries(
          c["name"],
          c["alpha2Code"],
          c["alpha3Code"],
          c["region"],
          c["subregion"],
          c["population"],
          c["capital"],
          //c["latlng"],
          c["demonym"],
          c["area"],
          c["gini"],
          //c["timezones"],
          // c["borders"],
          //c["nativeName"],
          c["numericCode"],
          //c["currencies"],
          //c["languages"],
          //c["translations"],
          c["flag"],
          //c["regionalBlocs"],
          c["cioc"]);
      countries.add(country);
    }

    print(countries.length.toString());
    return countries;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        child: FutureBuilder(
            future: _getCountries(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text("Loading Countries..."),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(snapshot.data[index].name),
                        subtitle: Text(snapshot.data[index].capital),
                      );
                    });
              }
            }),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}