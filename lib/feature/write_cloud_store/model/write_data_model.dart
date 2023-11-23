// ignore_for_file: public_member_api_docs, sort_constructors_first

import '../../../lib.dart';

class WritedataModel {
  final String? stringField;
  final int? numberField;
  final bool? booleanField;
  final List<String>? arrayField;
  final GeoPoint? geopointField;
  final SingleNestedWriteModel? nestedObject;
  final Timestamp? timestampField;
  WritedataModel({
    this.stringField,
    this.numberField,
    this.booleanField,
    this.arrayField,
    this.geopointField,
    this.nestedObject,
    this.timestampField,
  });

  WritedataModel copyWith({
    String? stringField,
    int? numberField,
    bool? booleanField,
    List<String>? arrayField,
    GeoPoint? geopointField,
    SingleNestedWriteModel? nestedObject,
    Timestamp? timestampField,
  }) {
    return WritedataModel(
      stringField: stringField ?? this.stringField,
      numberField: numberField ?? this.numberField,
      booleanField: booleanField ?? this.booleanField,
      arrayField: arrayField ?? this.arrayField,
      geopointField: geopointField ?? this.geopointField,
      nestedObject: nestedObject ?? this.nestedObject,
      timestampField: timestampField ?? this.timestampField,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stringField': stringField,
      'numberField': numberField,
      'booleanField': booleanField,
      'arrayField': arrayField,
      'geopointField': geopointField,
      'nestedObject': nestedObject?.toMap(),
      'timestampField': timestampField,
    };
  }

  factory WritedataModel.fromMap(Map<String, dynamic> map) {
    return WritedataModel(
      stringField:
          map['stringField'] != null ? map['stringField'] as String : null,
      numberField:
          map['numberField'] != null ? map['numberField'] as int : null,
      booleanField:
          map['booleanField'] != null ? map['booleanField'] as bool : null,
      arrayField: map['arrayField'] != null
          ? List<String>.from((map['arrayField'] as List<String>))
          : null,
      geopointField: map['geopointField'],
      nestedObject: map['nestedObject'] != null
          ? SingleNestedWriteModel.fromMap(
              map['nestedObject'] as Map<String, dynamic>)
          : null,
      timestampField: map['timestampField'],
    );
  }

  String toJson() => json.encode(toMap());

  factory WritedataModel.fromJson(String source) =>
      WritedataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'WritedataModel(stringField: $stringField, numberField: $numberField, booleanField: $booleanField, arrayField: $arrayField, geopointField: $geopointField, nestedObject: $nestedObject, timestampField: $timestampField)';
  }

  @override
  bool operator ==(covariant WritedataModel other) {
    if (identical(this, other)) return true;

    return other.stringField == stringField &&
        other.numberField == numberField &&
        other.booleanField == booleanField &&
        listEquals(other.arrayField, arrayField) &&
        other.geopointField == geopointField &&
        other.nestedObject == nestedObject &&
        other.timestampField == timestampField;
  }

  @override
  int get hashCode {
    return stringField.hashCode ^
        numberField.hashCode ^
        booleanField.hashCode ^
        arrayField.hashCode ^
        geopointField.hashCode ^
        nestedObject.hashCode ^
        timestampField.hashCode;
  }
}
