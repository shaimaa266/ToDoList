import 'package:flutter/material.dart';

class ToDoItem {
  final String title;
  final String time;

  ToDoItem(this.title, this.time);
}

class DialogScreen extends StatefulWidget {
  DialogScreen({Key? key}) : super(key: key);

  @override
  State<DialogScreen> createState() => _DialogScreenState();
}

class _DialogScreenState extends State<DialogScreen> {
  Color backColor = const Color(0xff4368FF);

  // Define your list of ToDo items
  final List<ToDoItem> todoItems = [
    ToDoItem("Communication System Quiz", "10:00 AM"),
    ToDoItem("OS report", "11:00 AM"),
    ToDoItem("Buy some stuff", "1:00 PM"),
    ToDoItem("Go to The Gym", "2:00 PM"),
    ToDoItem("Flutter task", "4:00 PM"),
    ToDoItem("Flutter Task بردو", "6:00 PM"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text(
                "Todo List ",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            Expanded(
              // Use ListView.builder to create a scrollable list
              child: ListView.builder(
                itemCount: todoItems.length,
                itemBuilder: (context, index) {
                  final item = todoItems[index];
                  return ListTile(
                    title: Text(
                      item.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      item.time,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text(
                                "Delete",
                              ),
                              titleTextStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 22,
                              ),
                              content: const Text(
                                "Are you sure you want to delete the item ?",
                              ),
                              contentPadding: const EdgeInsets.all(12),
                              contentTextStyle: const TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      Navigator.of(context).pop();
                                    });

                                  },
                                  child: Text(
                                    "Cancel",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                  setState(() {
                                    todoItems.removeAt(index);
                                    Navigator.of(context).pop();
                                  });

                                  },
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        );
                      },
                      color: Colors.white,
                      icon: Icon(Icons.delete_forever),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

