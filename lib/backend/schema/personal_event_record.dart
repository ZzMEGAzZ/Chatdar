import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'personal_event_record.g.dart';

abstract class PersonalEventRecord
    implements Built<PersonalEventRecord, PersonalEventRecordBuilder> {
  static Serializer<PersonalEventRecord> get serializer =>
      _$personalEventRecordSerializer;

  String? get title;

  String? get description;

  @BuiltValueField(wireName: 'created_By')
  DocumentReference? get createdBy;

  BuiltList<DocumentReference>? get views;

  String? get location;

  @BuiltValueField(wireName: 'date_start')
  DateTime? get dateStart;

  @BuiltValueField(wireName: 'date_end')
  DateTime? get dateEnd;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PersonalEventRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..views = ListBuilder()
    ..location = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('personalEvent');

  static Stream<PersonalEventRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PersonalEventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PersonalEventRecord._();
  factory PersonalEventRecord(
          [void Function(PersonalEventRecordBuilder) updates]) =
      _$PersonalEventRecord;

  static PersonalEventRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPersonalEventRecordData({
  String? title,
  String? description,
  DocumentReference? createdBy,
  String? location,
  DateTime? dateStart,
  DateTime? dateEnd,
}) {
  final firestoreData = serializers.toFirestore(
    PersonalEventRecord.serializer,
    PersonalEventRecord(
      (p) => p
        ..title = title
        ..description = description
        ..createdBy = createdBy
        ..views = null
        ..location = location
        ..dateStart = dateStart
        ..dateEnd = dateEnd,
    ),
  );

  return firestoreData;
}
