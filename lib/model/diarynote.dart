const String tableNotes = 'diarynotes';

class DiaryNotesFields {
  static final List<String> values = [
    id,
    isImportant,
    number,
    title,
    description,
    time
  ];
  static const String id = '_id';
  static const String isImportant = 'isImportant';
  static const String number = 'number';
  static const String title = 'title';
  static const String description = 'description';
  static const String time = 'time';
}

class DiaryNotes {
  final int? id;
  final bool isImportant;
  final int number;
  final String title;
  final String description;
  final DateTime createdTime;

  const DiaryNotes({
    this.id,
    required this.isImportant,
    required this.number,
    required this.title,
    required this.description,
    required this.createdTime,
  });

  DiaryNotes copy({
    int? id,
    bool? isImportant,
    int? number,
    String? title,
    String? description,
    DateTime? createdTime,
  }) =>
      DiaryNotes(
        id: id ?? this.id,
        isImportant: isImportant ?? this.isImportant,
        number: number ?? this.number,
        title: title ?? this.title,
        description: description ?? this.description,
        createdTime: createdTime ?? this.createdTime,
      );

  static DiaryNotes fromJson(Map<String, Object?> json) => DiaryNotes(
    id: json[DiaryNotesFields.id] as int?,
    isImportant: json[DiaryNotesFields.isImportant] == 1,
    number: json[DiaryNotesFields.number] as int,
    title: json[DiaryNotesFields.title] as String,
    description: json[DiaryNotesFields.description] as String,
    createdTime: DateTime.parse(json[DiaryNotesFields.time] as  String),
  );

  Map<String, Object?> toJson() => {
        DiaryNotesFields.id: id,
        DiaryNotesFields.title: title,
        DiaryNotesFields.isImportant: isImportant ? 1 : 0,
        DiaryNotesFields.number: number,
        DiaryNotesFields.description: description,
        DiaryNotesFields.time: createdTime.toIso8601String(),
      };
}
