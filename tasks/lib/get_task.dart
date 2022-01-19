import 'package:flutter/material.dart';
import 'package:tasks/elem_list.dart';
import 'package:tasks/newinput.dart';
import 'elements.dart';
class GetTask extends StatefulWidget {
  

  @override
  _GetTaskState createState() => _GetTaskState();
}

class _GetTaskState extends State<GetTask> {
  final List<Elements> _elements = [Elements('t1', 'todo','due wednesday' , '5/4/21', '25:54'),  
    Elements('t2', 'todo2', 'due thrsdy','13/4/21','23:43')];

  // void _addTask(String title, String date, String time, String details){
  //   final newtask = Elements(DateTime.now().toString(), title, details , date, time);

  //   setState(() {
  //     _elements.add(newtask);
  //   });
  // }

  void deleteTask(String id){
    setState(() {
      _elements.removeWhere((tx) {
        return tx.id == id;
      });
    });
  
}

  @override
  Widget build(BuildContext context) 
  {
    return Column(
      children: <Widget>[
       
        ElemList(_elements,deleteTask),
      ],
      
    );
  }
}