import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_schedule_record.g.dart';

abstract class EventScheduleRecord
    implements Built<EventScheduleRecord, EventScheduleRecordBuilder> {
  static Serializer<EventScheduleRecord> get serializer =>
      _$eventScheduleRecordSerializer;

  @BuiltValueField(wireName: 'date_start')
  DateTime? get dateStart;

  @BuiltValueField(wireName: 'date_end')
  DateTime? get dateEnd;

  BuiltList<DocumentReference>? get views;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventScheduleRecordBuilder builder) =>
      builder..views = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event_schedule');

  static Stream<EventScheduleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventScheduleRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventScheduleRecord._();
  factory EventScheduleRecord(
          [void Function(EventScheduleRecordBuilder) updates]) =
      _$EventScheduleRecord;

  static EventScheduleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventScheduleRecordData({
  DateTime? dateStart,
  DateTime? dateEnd,
}) {
  final firestoreData = serializers.toFirestore(
    EventScheduleRecord.serializer,
    EventScheduleRecord(
      (e) => e
        ..dateStart = dateStart
        ..dateEnd = dateEnd
        ..views = null,
    ),
  );

  return firestoreData;
}
