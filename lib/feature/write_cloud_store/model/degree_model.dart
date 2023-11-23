// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class NestedWriteModel {
  final String? name;
  final int? age;
  NestedWriteModel({
    this.name,
    this.age,
  });

  NestedWriteModel copyWith({
    String? name,
    int? age,
  }) {
    return NestedWriteModel(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  factory NestedWriteModel.fromMap(Map<String, dynamic> map) {
    return NestedWriteModel(
      name: map['name'] != null ? map['name'] as String : null,
      age: map['age'] != null ? map['age'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory NestedWriteModel.fromJson(String source) => NestedWriteModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NestedWriteModel(name: $name, age: $age)';

  @override
  bool operator ==(covariant NestedWriteModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
