// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

// ignore_for_file: prefer_typing_uninitialized_variables

class Notes {
  String subjecttitle;
  var path;

  Notes({
    required this.subjecttitle,
    required this.path,
  });

  Notes copyWith({
    String? subjecttitle,
    var path,
  }) {
    return Notes(
      subjecttitle: subjecttitle ?? this.subjecttitle,
      path: path ?? this.path,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjecttitle': subjecttitle,
      'path': path.toMap(),
    };
  }

  factory Notes.fromMap(Map<String, dynamic> map) {
    return Notes(
      subjecttitle: map['subjecttitle'] as String,
      path: Notes.fromMap(map['path'] as Map<String, dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory Notes.fromJson(String source) =>
      Notes.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Notes(subjecttitle: $subjecttitle, path: $path)';

  @override
  bool operator ==(covariant Notes other) {
    if (identical(this, other)) return true;

    return other.subjecttitle == subjecttitle && other.path == path;
  }

  @override
  int get hashCode => subjecttitle.hashCode ^ path.hashCode;
}
