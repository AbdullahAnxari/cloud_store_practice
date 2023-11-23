// ignore_for_file: public_member_api_docs, sort_constructors_first
import '../../../lib.dart';

class SingleReadDataModel {
  final String? stringField;
  final int? numberField;
  final bool? booleanField;
  final List<dynamic>? arrayField;
  final GeoPoint? geopointField;
  final NestedReadObject? nestedObject;
  final Timestamp? timestampField;
  final ReferenceField? referenceField;
  SingleReadDataModel({
    this.stringField,
    this.numberField,
    this.booleanField,
    this.arrayField,
    this.geopointField,
    this.nestedObject,
    this.timestampField,
    this.referenceField,
  });

  SingleReadDataModel copyWith({
    String? stringField,
    int? numberField,
    bool? booleanField,
    List<String>? arrayField,
    GeoPoint? geopointField,
    NestedReadObject? nestedObject,
    Timestamp? timestampField,
    ReferenceField? referenceField,
  }) {
    return SingleReadDataModel(
      stringField: stringField ?? this.stringField,
      numberField: numberField ?? this.numberField,
      booleanField: booleanField ?? this.booleanField,
      arrayField: arrayField ?? this.arrayField,
      geopointField: geopointField ?? this.geopointField,
      nestedObject: nestedObject ?? this.nestedObject,
      timestampField: timestampField ?? this.timestampField,
      referenceField: referenceField ?? this.referenceField,
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
      'referenceField': referenceField,
    };
  }

  factory SingleReadDataModel.fromMap(Map<String, dynamic> map) {
    return SingleReadDataModel(
      stringField:
          map['stringField'] != null ? map['stringField'] as String : null,
      numberField:
          map['numberField'] != null ? map['numberField'] as int : null,
      booleanField:
          map['booleanField'] != null ? map['booleanField'] as bool : null,
      arrayField: map['arrayField'] != null
          ? List<dynamic>.from((map['arrayField'] as List<dynamic>))
          : null,
      geopointField: map['geopointField'],
      nestedObject: map['nestedObject'] != null
          ? NestedReadObject.fromMap(
              map['nestedObject'] as Map<String, dynamic>)
          : null,
      timestampField: map['timestampField'],
      referenceField: map['referenceField'] != null
          ? ReferenceField.fromMap(
              map['referenceField'] as Map<String, dynamic>)
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory SingleReadDataModel.fromJson(String source) =>
      SingleReadDataModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'ReadDataModel(stringField: $stringField, numberField: $numberField, booleanField: $booleanField, arrayField: $arrayField, geopointField: $geopointField, nestedObject: $nestedObject, timestampField: $timestampField, referenceField: $referenceField)';
  }

  @override
  bool operator ==(covariant SingleReadDataModel other) {
    if (identical(this, other)) return true;

    return other.stringField == stringField &&
        other.numberField == numberField &&
        other.booleanField == booleanField &&
        listEquals(other.arrayField, arrayField) &&
        other.geopointField == geopointField &&
        other.nestedObject == nestedObject &&
        other.timestampField == timestampField &&
        other.referenceField == referenceField;
  }

  @override
  int get hashCode {
    return stringField.hashCode ^
        numberField.hashCode ^
        booleanField.hashCode ^
        arrayField.hashCode ^
        geopointField.hashCode ^
        nestedObject.hashCode ^
        timestampField.hashCode ^
        referenceField.hashCode;
  }
}
