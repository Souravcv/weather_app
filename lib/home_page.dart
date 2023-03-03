
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.grey ,
      appBar: AppBar(
        backgroundColor: Colors.grey ,
        elevation: 0.0,
        title: const Text('Weather App',style:TextStyle(color: Colors.black),),

        centerTitle: true,
        leading: IconButton(onPressed: (){}, icon:Icon(Icons.menu),color: Colors.black,),
        
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          
        ],
      ),
    );
  }
}