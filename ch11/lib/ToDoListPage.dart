import 'package:flutter/material.dart';
import 'ToDo.dart';
class TODoListPage extends StatefulWidget {
  const TODoListPage({super.key});

  @override
  State<TODoListPage> createState() => _TODoListPageState();
}

class _TODoListPageState extends State<TODoListPage> {
  final _items = <ToDo>[];
  var _toDocontroller = TextEditingController();

  void dispose(){
    _toDocontroller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          " 남은 할 일  "
        ),
        backgroundColor: Colors.black,
      ),
      body:Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: TextField(
                    controller: _toDocontroller,
                    ),
                ),
                ElevatedButton(onPressed: ()=>_addTodo(ToDo(_toDocontroller.text)),
                    child:
                    Text('추가')
                )
              ],
            ),
            Expanded(child: ListView(
              children:  _items.map((todo)=> _buildItemWidget(todo)).toList(),

            ),
            ),
          ],
        ),
      )
    );
  }
  Widget _buildItemWidget(ToDo todo){
    return ListTile(
      onTap: (){},
      title: Text(
        todo.title,
        style: todo.isDone
            ?TextStyle(
          decoration: TextDecoration.lineThrough,
          fontSize:FontStyle.italic,) : null,
      ),
      trailing: IconButton(
        icon: Icon(Icons.delete_forever),
      ),
    );
  }
  void _addTodo(ToDo todo){
    setState(() {
      _items.add(todo);
      _toDocontroller.text = '';
    });
  }
}
