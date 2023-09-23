class Jarvisevoices {
  int? id;
  String? title;
  String? date;
  String? startTime;
  String? lastTime;
  String? discription;

  Jarvisevoices({
    this.id,
    this.title,
    this.date,
    this.startTime,
    this.lastTime,
    this.discription,
  });

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'id': id,
      'title': title,
      'date': date,
      'startTime': startTime,
      'lastTime': lastTime,
      'discription': discription,
    };
    return map;
  }

  Jarvisevoices.fromMap(Map<dynamic, dynamic> map) {
    id = map['id'];
    title = map['title'];
    date = map['date'];
    startTime = map['startTime'];
    lastTime = map['lastTime'];
    discription = map['description'];
  }
}
