
import 'package:flutter/material.dart';
class NewInput  extends StatelessWidget {
  final Function addTask;
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
      height: 600,
      child: Card(
              elevation: 5,
              
              child: Container(
                child:  Column(
              
                children: <Widget>[
                  FlatButton(onPressed: ()=>addTask(titleController.text,dayController.text,timeController.text,detailController.text)
                  ,
                child: Text('Add to list'),textColor: Colors.white,
                color: Colors.orangeAccent,),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(labelText: 'Title' ),),
                // TextField(
                //   controller: _DueController,
                //   decoration: InputDecoration(labelText: 'Due' )),
                TextField(
                  controller: dayController,
                  decoration: InputDecoration(labelText: 'Date' )),
                TextField(
                  controller: timeController,
                  decoration: InputDecoration(labelText: 'Time' )),
                TextField(
                  controller: detailController,
                  decoration: InputDecoration(labelText: 'detail' )),

                
              ],
            )),));
  }
}