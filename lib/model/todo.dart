class Todo {
  String? id;
  String? todoText;
  bool isDone;

  Todo({required this.id, required this.todoText, this.isDone = false});

  static List<Todo> todoList() {
    return [
      Todo(id: '01', todoText: 'Morning prayer', isDone: true),
      Todo(id: '02', todoText: 'Check Emails', isDone: true),
      Todo(
        id: '03',
        todoText: 'Completing pending assignment',
      ),
      Todo(
        id: '04',
        todoText: 'Reading research paper',
      ),
      Todo(
        id: '05',
        todoText: 'Buy groceries',
      ),
      Todo(
        id: '06',
        todoText: 'Cooking',
      ),
    ];
  }
}
