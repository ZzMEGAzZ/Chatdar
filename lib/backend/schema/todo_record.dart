import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'todo_record.g.dart';

abstract class TodoRecord implements Built<TodoRecord, TodoRecordBuilder> {
  static Serializer<TodoRecord> get serializer => _$todoRecordSerializer;

  String? get title;

  String? get description;

  DateTime? get date;

  @BuiltValueField(wireName: 'is_done')
  bool? get isDone;

  @BuiltValueField(wireName: 'user_image')
  String? get userImage;

  @BuiltValueField(wireName: 'created_by')
  DocumentReference? get createdBy;

  BuiltList<String>? get items;

  BuiltList<DocumentReference>? get views;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(TodoRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..isDone = false
    ..userImage = ''
    ..items = ListBuilder()
    ..views = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('todo');

  static Stream<TodoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TodoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TodoRecord._();
  factory TodoRecord([void Function(TodoRecordBuilder) updates]) = _$TodoRecord;

  static TodoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTodoRecordData({
  String? title,
  String? description,
  DateTime? date,
  bool? isDone,
  String? userImage,
  DocumentReference? createdBy,
}) {
  final firestoreData = serializers.toFirestore(
    TodoRecord.serializer,
    TodoRecord(
      (t) => t
        ..title = title
        ..description = description
        ..date = date
        ..isDone = isDone
        ..userImage = userImage
        ..createdBy = createdBy
        ..items = null
        ..views = null,
    ),
  );

  return firestoreData;
}
