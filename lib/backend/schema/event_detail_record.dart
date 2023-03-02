import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'event_detail_record.g.dart';

abstract class EventDetailRecord
    implements Built<EventDetailRecord, EventDetailRecordBuilder> {
  static Serializer<EventDetailRecord> get serializer =>
      _$eventDetailRecordSerializer;

  String? get title;

  String? get description;

  @BuiltValueField(wireName: 'is_done')
  bool? get isDone;

  @BuiltValueField(wireName: 'user_image')
  String? get userImage;

  @BuiltValueField(wireName: 'created_by')
  DocumentReference? get createdBy;

  BuiltList<String>? get items;

  BuiltList<DocumentReference>? get views;

  String? get location;

  @BuiltValueField(wireName: 'date_start')
  DateTime? get dateStart;

  @BuiltValueField(wireName: 'date_end')
  DateTime? get dateEnd;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EventDetailRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..isDone = false
    ..userImage = ''
    ..items = ListBuilder()
    ..views = ListBuilder()
    ..location = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event_detail');

  static Stream<EventDetailRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EventDetailRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EventDetailRecord._();
  factory EventDetailRecord([void Function(EventDetailRecordBuilder) updates]) =
      _$EventDetailRecord;

  static EventDetailRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEventDetailRecordData({
  String? title,
  String? description,
  bool? isDone,
  String? userImage,
  DocumentReference? createdBy,
  String? location,
  DateTime? dateStart,
  DateTime? dateEnd,
}) {
  final firestoreData = serializers.toFirestore(
    EventDetailRecord.serializer,
    EventDetailRecord(
      (e) => e
        ..title = title
        ..description = description
        ..isDone = isDone
        ..userImage = userImage
        ..createdBy = createdBy
        ..items = null
        ..views = null
        ..location = location
        ..dateStart = dateStart
        ..dateEnd = dateEnd,
    ),
  );

  return firestoreData;
}
