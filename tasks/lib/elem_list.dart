import 'package:flutter/material.dart';
import 'elements.dart';
import 'details.dart';

class ElemList extends StatelessWidget {
  

final Function deleteTask;
 final List<Elements> elems;
 ElemList(this.elems, this.deleteTask);
  @override
  Widget build(BuildContext context) {
    return Container(
      height : 610,
      child: SingleChildScrollView(
      child:   
    
       
      Column(
              children:
              
                  elems.map((el) {
                  return InkWell( 
                    onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=> Details(el))),
                    child: Card(
                    
                    child:Container( 
                    
                    //width: 25,
                    alignment: Alignment.center,
                    
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration( border: Border.all(color: Colors.orange, width: 2)),
                    padding: EdgeInsets.all(10),
                    child:  Column(
                    children: <Widget>[
                    Text(el.tasktitle, style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25,
                      
                    ),),
                    Text(el.date),
                    Text(el.time),
                    
                    Container( 
                      alignment: Alignment.centerRight,
                      child:
                    IconButton(onPressed: ()=> deleteTask(el.id), icon: Icon(Icons.delete), color: Colors.grey,
                    ))


                    
                  ],)))) ;
                  }).toList(),
              
         ),
         
         
         ));
    
  }
}