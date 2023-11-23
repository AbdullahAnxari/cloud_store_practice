// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SingleNestedWriteModel {
  final String? name;
  final int? age;
  SingleNestedWriteModel({
    this.name,
    this.age,
  });

  SingleNestedWriteModel copyWith({
    String? name,
    int? age,
  }) {
    return SingleNestedWriteModel(
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

  factory SingleNestedWriteModel.fromMap(Map<String, dynamic> map) {
    return SingleNestedWriteModel(
      name: map['name'] != null ? map['name'] as String : null,
      age: map['age'] != null ? map['age'] as int : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SingleNestedWriteModel.fromJson(String source) => SingleNestedWriteModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'NestedWriteModel(name: $name, age: $age)';

  @override
  bool operator ==(covariant SingleNestedWriteModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.name == name &&
      other.age == age;
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}
