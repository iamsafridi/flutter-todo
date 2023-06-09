class Note {
  int? id;
  String? title;
  DateTime? date;
  String? priotity;
  int? status;

  Note({this.title, this.date, this.priotity, this.status});

  Note.withId({this.id, this.title, this.date, this.priotity, this.status});

  Map<String, dynamic> toMap() {
    final map = Map<String, dynamic>();

    if (id != null) {
      map['id'] = id;
    }

    map['title'] = title;
    map['date'] = date!.toIso8601String();
    map['priority'] = priotity;
    map['status'] = status;
    return map;
  }

  factory Note.fromMap(Map<String, dynamic> map) {
    return Note.withId(
        id: map['id'],
        title: map['title'],
        date: DateTime.parse(map['date']),
        priotity: map['priority'],
        status: map['status']);
  }
}
