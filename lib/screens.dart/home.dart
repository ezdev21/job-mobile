import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart';
import 'package:job_platform/templates/job_template.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Job> _jobs;
  @override
  void initState() {
    super.initState();
    getJobs();
  }
  void getJobs(){
    try{
     Response response=get('/jobs');
    _jobs=jsonDecode(response.data)
    }
    catch(e){

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text('Home'),
        centerTitle:true
        backgroundColor:Colors.
      ),
      body:Container(
      child:ListView.builder(
        itemCount: _jobs.length,
        itemBuilder: (BuildContext context, int index) {
          return JobTemplate(_jobs[index]);
        },
      ),
      )
    );
  }
}