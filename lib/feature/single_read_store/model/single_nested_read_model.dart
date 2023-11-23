// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../lib.dart';

class SingleNestedObject {
  final String nestedString;
  final String nestedNumber;
  SingleNestedObject({
    required this.nestedString,
    required this.nestedNumber,
  });

  SingleNestedObject copyWith({
    String? nestedString,
    String? nestedNumber,
  }) {
    return SingleNestedObject(
      nestedString: nestedString ?? this.nestedString,
      nestedNumber: nestedNumber ?? this.nestedNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nestedString': nestedString,
      'nestedNumber': nestedNumber,
    };
  }

  factory SingleNestedObject.fromMap(Map<String, dynamic> map) {
    return SingleNestedObject(
      nestedString: map['nestedString'] as String,
      nestedNumber: map['nestedNumber'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SingleNestedObject.fromJson(String source) =>
      SingleNestedObject.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'ReadNestedModel(nestedString: $nestedString, nestedNumber: $nestedNumber)';

  @override
  bool operator ==(covariant SingleNestedObject other) {
    if (identical(this, other)) return true;

    return other.nestedString == nestedString &&
        other.nestedNumber == nestedNumber;
  }

  @override
  int get hashCode => nestedString.hashCode ^ nestedNumber.hashCode;
}
