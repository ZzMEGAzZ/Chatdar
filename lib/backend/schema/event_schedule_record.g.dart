// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_schedule_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventScheduleRecord> _$eventScheduleRecordSerializer =
    new _$EventScheduleRecordSerializer();

class _$EventScheduleRecordSerializer
    implements StructuredSerializer<EventScheduleRecord> {
  @override
  final Iterable<Type> types = const [
    EventScheduleRecord,
    _$EventScheduleRecord
  ];
  @override
  final String wireName = 'EventScheduleRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EventScheduleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
  EventScheduleRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventScheduleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date_start':
          result.dateStart = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'date_end':
          result.dateEnd = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'views':
          result.views.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
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

class _$EventScheduleRecord extends EventScheduleRecord {
  @override
  final DateTime? dateStart;
  @override
  final DateTime? dateEnd;
  @override
  final BuiltList<DocumentReference<Object?>>? views;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$EventScheduleRecord(
          [void Function(EventScheduleRecordBuilder)? updates]) =>
      (new EventScheduleRecordBuilder()..update(updates))._build();

  _$EventScheduleRecord._(
      {this.dateStart, this.dateEnd, this.views, this.ffRef})
      : super._();

  @override
  EventScheduleRecord rebuild(
          void Function(EventScheduleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventScheduleRecordBuilder toBuilder() =>
      new EventScheduleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventScheduleRecord &&
        dateStart == other.dateStart &&
        dateEnd == other.dateEnd &&
        views == other.views &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, dateStart.hashCode), dateEnd.hashCode), views.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventScheduleRecord')
          ..add('dateStart', dateStart)
          ..add('dateEnd', dateEnd)
          ..add('views', views)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EventScheduleRecordBuilder
    implements Builder<EventScheduleRecord, EventScheduleRecordBuilder> {
  _$EventScheduleRecord? _$v;

  DateTime? _dateStart;
  DateTime? get dateStart => _$this._dateStart;
  set dateStart(DateTime? dateStart) => _$this._dateStart = dateStart;

  DateTime? _dateEnd;
  DateTime? get dateEnd => _$this._dateEnd;
  set dateEnd(DateTime? dateEnd) => _$this._dateEnd = dateEnd;

  ListBuilder<DocumentReference<Object?>>? _views;
  ListBuilder<DocumentReference<Object?>> get views =>
      _$this._views ??= new ListBuilder<DocumentReference<Object?>>();
  set views(ListBuilder<DocumentReference<Object?>>? views) =>
      _$this._views = views;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  EventScheduleRecordBuilder() {
    EventScheduleRecord._initializeBuilder(this);
  }

  EventScheduleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dateStart = $v.dateStart;
      _dateEnd = $v.dateEnd;
      _views = $v.views?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventScheduleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventScheduleRecord;
  }

  @override
  void update(void Function(EventScheduleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventScheduleRecord build() => _build();

  _$EventScheduleRecord _build() {
    _$EventScheduleRecord _$result;
    try {
      _$result = _$v ??
          new _$EventScheduleRecord._(
              dateStart: dateStart,
              dateEnd: dateEnd,
              views: _views?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'views';
        _views?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventScheduleRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
