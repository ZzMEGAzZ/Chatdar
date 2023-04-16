// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'personal_event_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PersonalEventRecord> _$personalEventRecordSerializer =
    new _$PersonalEventRecordSerializer();

class _$PersonalEventRecordSerializer
    implements StructuredSerializer<PersonalEventRecord> {
  @override
  final Iterable<Type> types = const [
    PersonalEventRecord,
    _$PersonalEventRecord
  ];
  @override
  final String wireName = 'PersonalEventRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PersonalEventRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_By')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.views;
    if (value != null) {
      result
        ..add('views')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateStart;
    if (value != null) {
      result
        ..add('date_start')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dateEnd;
    if (value != null) {
      result
        ..add('date_end')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PersonalEventRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PersonalEventRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_By':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'views':
          result.views.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'date_start':
          result.dateStart = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date_end':
          result.dateEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PersonalEventRecord extends PersonalEventRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final BuiltList<DocumentReference<Object?>>? views;
  @override
  final String? location;
  @override
  final DateTime? dateStart;
  @override
  final DateTime? dateEnd;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PersonalEventRecord(
          [void Function(PersonalEventRecordBuilder)? updates]) =>
      (new PersonalEventRecordBuilder()..update(updates))._build();

  _$PersonalEventRecord._(
      {this.title,
      this.description,
      this.createdBy,
      this.views,
      this.location,
      this.dateStart,
      this.dateEnd,
      this.ffRef})
      : super._();

  @override
  PersonalEventRecord rebuild(
          void Function(PersonalEventRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PersonalEventRecordBuilder toBuilder() =>
      new PersonalEventRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PersonalEventRecord &&
        title == other.title &&
        description == other.description &&
        createdBy == other.createdBy &&
        views == other.views &&
        location == other.location &&
        dateStart == other.dateStart &&
        dateEnd == other.dateEnd &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jc(_$hash, views.hashCode);
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, dateStart.hashCode);
    _$hash = $jc(_$hash, dateEnd.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PersonalEventRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('createdBy', createdBy)
          ..add('views', views)
          ..add('location', location)
          ..add('dateStart', dateStart)
          ..add('dateEnd', dateEnd)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PersonalEventRecordBuilder
    implements Builder<PersonalEventRecord, PersonalEventRecordBuilder> {
  _$PersonalEventRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  ListBuilder<DocumentReference<Object?>>? _views;
  ListBuilder<DocumentReference<Object?>> get views =>
      _$this._views ??= new ListBuilder<DocumentReference<Object?>>();
  set views(ListBuilder<DocumentReference<Object?>>? views) =>
      _$this._views = views;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  DateTime? _dateStart;
  DateTime? get dateStart => _$this._dateStart;
  set dateStart(DateTime? dateStart) => _$this._dateStart = dateStart;

  DateTime? _dateEnd;
  DateTime? get dateEnd => _$this._dateEnd;
  set dateEnd(DateTime? dateEnd) => _$this._dateEnd = dateEnd;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PersonalEventRecordBuilder() {
    PersonalEventRecord._initializeBuilder(this);
  }

  PersonalEventRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _createdBy = $v.createdBy;
      _views = $v.views?.toBuilder();
      _location = $v.location;
      _dateStart = $v.dateStart;
      _dateEnd = $v.dateEnd;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PersonalEventRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PersonalEventRecord;
  }

  @override
  void update(void Function(PersonalEventRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PersonalEventRecord build() => _build();

  _$PersonalEventRecord _build() {
    _$PersonalEventRecord _$result;
    try {
      _$result = _$v ??
          new _$PersonalEventRecord._(
              title: title,
              description: description,
              createdBy: createdBy,
              views: _views?.build(),
              location: location,
              dateStart: dateStart,
              dateEnd: dateEnd,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'views';
        _views?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PersonalEventRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
