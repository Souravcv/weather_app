import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:weather_app/model/weather_model.dart';
import 'package:weather_app/services/weather_api.dart';

import 'views/additional_information.dart';
import 'views/current_weather.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather data = Weather();
  Future <void> getData()async{
data = await client.getCurrentWeather("india");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0.0,
        title: const Text(
          'Weather App',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          color: Colors.black,
        ),
      ),
      body:FutureBuilder(
        future: getData(),
        
        builder:(context,snapshot){
          if (snapshot.connectionState == ConnectionState.done ) {
            Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          currentWeathed(Icons.wb_sunny_rounded, "${data.temp}", "${data.cityName}"),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Additional Information",
            style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          Divider(),
          SizedBox(
            height: 20.0,
          ),
          additionalInformation("${data.wind}", "${data.humidity}", "${data.pressure}", "${data.feelsLike}"),
        ],
      );
            
          }else if(snapshot.connectionState ==ConnectionState.waiting ){
            return Center(child: CircularProgressIndicator(),);

          }
          return Container();
        }
        ),
    );
  }
}









