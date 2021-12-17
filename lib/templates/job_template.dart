import 'package:flutter/material.dart';
import 'package:job_platform/models/job.dart';

class JobTemplate extends StatefulWidget {
  Job job;
  JobTemplate({Key? key,this.job}) : super(key: key);

  @override
  _JobTemplateState createState() => _JobTemplateState();
}

class _JobTemplateState extends State<JobTemplate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:Edgeinsets.all(3),
      margin:Edgeinsets.all(3),
      decoration:BoxDecoration(
        color:Colors.white
      ),
      child:Column(
        children:[
          Text('${job.title}',style:TextStyle(fontSize:36)),
          SizedBox(height:20),
          Text('${job.description}',style:TextStyle(fontSize:36)),
          SizedBox(height:20),
          Row(
            children:[
              IconButton(
                icon:Icon(Icons.favourite),
                onpressed:(){

                },
                color:Colors.gray[600]
              ),
              IconButton(
                icon:Icon(Icons.save),
                onpressed:(){

                },
                color:Colors.red
              ),
              IconButton(
                icon:Icon(Icons.report),
                onpressed:(){

                },
                color:Colors.red
              ),
            ]
          )
        ]
      )
    );
  }
}