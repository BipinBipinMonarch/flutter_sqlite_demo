class Note {
  final int? id;
  final String title;
  final String description;
  final DateTime createdTime;

  Note({
    this.id,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  Note copy({
    int? id,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      Note(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );

  static Note fromJson(Map<String, Object?> json) => Note(
        id: json['id'] as int?,
        title: json['title'] as String,
        description: json['description'] as String,
        createdTime: DateTime.parse(json['time'] as String),
      );

  Map<String, Object?> toJson() => {
        'id': id,
        'title': title,
        'description': description,
        'time': createdTime.toIso8601String(),
      };
}
