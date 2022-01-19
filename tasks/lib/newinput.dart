import 'package:tasks/task_page.dart';
import 'package:flutter/material.dart';
class NewInput  extends StatelessWidget {
  final Function addTask;
  String title='';
  String date=' ';
  String time='';
  String details='';
  final titleController= TextEditingController();
    final DueController = TextEditingController();
    final dayController = TextEditingController();
    final timeController = TextEditingController();
    final detailController = TextEditingController();
   NewInput(this.addTask);

   void submitdata(){
     addTask(titleController.text,dayController.text,timeController.text,detailController.text);
   }
  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 360,
      child: Card(
              elevation: 5,
              
              child: Container(
                padding: EdgeInsets.all(20),
                child:  Column(
              
                children: <Widget>[
                  FlatButton(onPressed: ()=>addTask(title,date,time,details)
                  ,
                child: Text('Add to list'),textColor: Colors.white,
                color: Colors.orangeAccent,),
                TextField(
                  //controller: titleController,
                  decoration: InputDecoration(labelText: 'Title' ),
                  onChanged: (val) => title = val ,),
                  
                // TextField(
                //   controller: _DueController,
                //   decoration: InputDecoration(labelText: 'Due' )),
                TextField(
                  //controller: dayController,
                  decoration: InputDecoration(labelText: 'Date' ),
                  onChanged: (val) => date = val ,),
                TextField(
                  //controller: timeController,
                  decoration: InputDecoration(labelText: 'Time' ),
                  onChanged: (val) => time = val ,),
                TextField(
                  //controller: detailController,
                  decoration: InputDecoration(labelText: 'detail' ),
                  onChanged: (val) => details = val ,),

                
              ],
            )),));
  }
}