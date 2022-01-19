import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:tasks/details.dart';
import 'package:tasks/elem_list.dart';
import 'package:tasks/elements.dart';
import 'package:tasks/newinput.dart';
import 'package:tasks/get_task.dart';



class TasksPage  extends StatefulWidget {
  
  @override
  _TasksPageState createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> { 
    
   final List<Elements> _elements = [Elements('t1', 'todo','due wednesday' , '5/4/21', '25:54'),  
    Elements('t2', 'todo2', 'due thrsdy','13/4/21','23:43')];

  void _addTask(String title, String date, String time, String details){
    final newtask = Elements(DateTime.now().toString(), title, details , date, time);

    setState(() {
      _elements.add(newtask);
    });
  }
  void _Addnewtask(BuildContext ctx){
    showModalBottomSheet(isScrollControlled: true,enableDrag: true,context: ctx, builder: (_){ 
      return NewInput(_addTask);
      // Container(
      //   child: Container(
      //     decoration: new BoxDecoration(
      //       borderRadius: BorderRadius.only(
      //         topLeft: Radius.circular(45),
      //         topRight: Radius.circular(45),
              
      //       )),
      //         child: NewInput(_addTask),
      //   )
      // );
      
      
    }, 
    
    );
  }
  void inputcreen(BuildContext ctx){
  Navigator.of(ctx).push(MaterialPageRoute(builder: (ctx) => NewInput(_addTask)));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tasks'),),
        body:SingleChildScrollView( 
        child: Column(
          children: <Widget>[
            Card( 
              color: Colors.orange,
              margin: EdgeInsets.all(10),
              child:Container(
              alignment: Alignment.center,
              child: Text('Your Tasks', style: TextStyle(color: Colors.white, fontSize: 25,fontWeight: FontWeight.bold),),
              
              width: 500,
              height: 50,),
            elevation: 7,),

        
            GetTask(),
            
            
           
            
            
            
            FloatingActionButton(
               child: Icon(Icons.add),
              onPressed: () =>inputcreen(context),
            
            ),
            
            
            
          
       
            ],

           
        )
    ));
  }
}