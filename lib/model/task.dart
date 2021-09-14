class Task{

  final String name;
  bool isDone;
  Task({required this.name,this.isDone = false});

  void toggleTask(){
     isDone = !isDone;
    }

  Task.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        isDone = json['isDone'];

  Map<String, dynamic> toJson() => {
    'name': name,
    'isDone': isDone,
  };


}