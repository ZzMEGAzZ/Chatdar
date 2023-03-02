// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_detail_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventDetailRecord> _$eventDetailRecordSerializer =
    new _$EventDetailRecordSerializer();

class _$EventDetailRecordSerializer
    implements StructuredSerializer<EventDetailRecord> {
  @override
  final Iterable<Type> types = const [EventDetailRecord, _$EventDetailRecord];
  @override
  final String wireName = 'EventDetailRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, EventDetailRecord object,
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
    value = object.isDone;
    if (value != null) {
      result
        ..add('is_done')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.userImage;
    if (value != null) {
      result
        ..add('user_image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdBy;
    if (value != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.items;
    if (value != null) {
      result
        ..add('items')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
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
  EventDetailRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventDetailRecordBuilder();

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
        case 'is_done':
          result.isDone = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'user_image':
          result.userImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_by':
          result.createdBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object?>);
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

class _$EventDetailRecord extends EventDetailRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final bool? isDone;
  @override
  final String? userImage;
  @override
  final DocumentReference<Object?>? createdBy;
  @override
  final BuiltList<String>? items;
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

  factory _$EventDetailRecord(
          [void Function(EventDetailRecordBuilder)? updates]) =>
      (new EventDetailRecordBuilder()..update(updates))._build();

  _$EventDetailRecord._(
      {this.title,
      this.description,
      this.isDone,
      this.userImage,
      this.createdBy,
      this.items,
      this.views,
      this.location,
      this.dateStart,
      this.dateEnd,
      this.ffRef})
      : super._();

  @override
  EventDetailRecord rebuild(void Function(EventDetailRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventDetailRecordBuilder toBuilder() =>
      new EventDetailRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventDetailRecord &&
        title == other.title &&
        description == other.description &&
        isDone == other.isDone &&
        userImage == other.userImage &&
        createdBy == other.createdBy &&
        items == other.items &&
        views == other.views &&
        location == other.location &&
        dateStart == other.dateStart &&
        dateEnd == other.dateEnd &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc($jc(0, title.hashCode),
                                            description.hashCode),
                                        isDone.hashCode),
                                    userImage.hashCode),
                                createdBy.hashCode),
                            items.hashCode),
                        views.hashCode),
                    location.hashCode),
                dateStart.hashCode),
            dateEnd.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EventDetailRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('isDone', isDone)
          ..add('userImage', userImage)
          ..add('createdBy', createdBy)
          ..add('items', items)
          ..add('views', views)
          ..add('location', location)
          ..add('dateStart', dateStart)
          ..add('dateEnd', dateEnd)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class EventDetailRecordBuilder
    implements Builder<EventDetailRecord, EventDetailRecordBuilder> {
  _$EventDetailRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _isDone;
  bool? get isDone => _$this._isDone;
  set isDone(bool? isDone) => _$this._isDone = isDone;

  String? _userImage;
  String? get userImage => _$this._userImage;
  set userImage(String? userImage) => _$this._userImage = userImage;

  DocumentReference<Object?>? _createdBy;
  DocumentReference<Object?>? get createdBy => _$this._createdBy;
  set createdBy(DocumentReference<Object?>? createdBy) =>
      _$this._createdBy = createdBy;

  ListBuilder<String>? _items;
  ListBuilder<String> get items => _$this._items ??= new ListBuilder<String>();
  set items(ListBuilder<String>? items) => _$this._items = items;

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

  EventDetailRecordBuilder() {
    EventDetailRecord._initializeBuilder(this);
  }

  EventDetailRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _isDone = $v.isDone;
      _userImage = $v.userImage;
      _createdBy = $v.createdBy;
      _items = $v.items?.toBuilder();
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
  void replace(EventDetailRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventDetailRecord;
  }

  @override
  void update(void Function(EventDetailRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EventDetailRecord build() => _build();

  _$EventDetailRecord _build() {
    _$EventDetailRecord _$result;
    try {
      _$result = _$v ??
          new _$EventDetailRecord._(
              title: title,
              description: description,
              isDone: isDone,
              userImage: userImage,
              createdBy: createdBy,
              items: _items?.build(),
              views: _views?.build(),
              location: location,
              dateStart: dateStart,
              dateEnd: dateEnd,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
        _$failedField = 'views';
        _views?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EventDetailRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
