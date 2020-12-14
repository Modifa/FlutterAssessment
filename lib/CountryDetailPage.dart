import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'models/models.dart';

class CountryDetailsPage extends StatelessWidget {
  final Countries country;
  CountryDetailsPage(this.country);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(country.name),
      ),
      body: Column(
        children: [
          Padding(padding: new EdgeInsets.all(10.0)),
          Row(
            children: [
              Padding(padding: new EdgeInsets.all(10.0)),
              CircleAvatar(
                child: Text(country.alpha3Code),
                backgroundColor: Colors.grey,
              ),
              Padding(padding: new EdgeInsets.all(10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      country.name,
                      textScaleFactor: 2,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      country.subregion,
                      textScaleFactor: 1,
                    ),
                  )
                ],
              )
            ],
          ),
          Container(
            child: SvgPicture.network(country.flag,
                height: 300,
                width: 250,
                placeholderBuilder: (BuildContext context) => Container(
                    width: 20,
                    height: 20,
                    child: const CircularProgressIndicator())),
          ),
          Container(
              alignment: Alignment.centerLeft,
              padding: new EdgeInsets.all(10.0),
              child: Text(
                  "${country.name} covers an area of ${country.area} km2 and has a population of ${country.population} - the nation has a Gini coefficient of ${country.gini}. A resident of ${country.name} is called a ${country.demonym}. The main currency accepted as legal tender is the ${country.currencies[0]["name"]} which is expressed with the symbol ${country.currencies[0]["symbol"]}")),
          Divider(),
          Padding(padding: new EdgeInsets.all(5.0)),
          Row(
            children: [
              Padding(padding: new EdgeInsets.all(10.0)),
              Container(child: Icon(Icons.location_on_outlined)),
              Padding(padding: new EdgeInsets.all(10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Sub-region",
                      textScaleFactor: 1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      country.subregion,
                      textScaleFactor: 1,
                    ),
                  )
                ],
              ),
            ],
          ),
          Divider(
            indent: 60,
          ),
          Row(
            children: [
              Padding(padding: new EdgeInsets.all(10.0)),
              Container(child: Icon(Icons.location_city)),
              Padding(padding: new EdgeInsets.all(10.0)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      "Capital",
                      textScaleFactor: 1,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      country.capital,
                      textScaleFactor: 1,
                    ),
                  )
                ],
              ),
              Divider(
                  // indent: 20,
                  // thickness: 2,
                  // endIndent: 20,
                  )
            ],
          ),
        ],
      ),
    );
    // ignore: dead_code
  }
}
