// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TodoRecord> _$todoRecordSerializer = new _$TodoRecordSerializer();

class _$TodoRecordSerializer implements StructuredSerializer<TodoRecord> {
  @override
  final Iterable<Type> types = const [TodoRecord, _$TodoRecord];
  @override
  final String wireName = 'TodoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TodoRecord object,
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
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  TodoRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TodoRecordBuilder();

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
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
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

class _$TodoRecord extends TodoRecord {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final DateTime? date;
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
  final DocumentReference<Object?>? ffRef;

  factory _$TodoRecord([void Function(TodoRecordBuilder)? updates]) =>
      (new TodoRecordBuilder()..update(updates))._build();

  _$TodoRecord._(
      {this.title,
      this.description,
      this.date,
      this.isDone,
      this.userImage,
      this.createdBy,
      this.items,
      this.views,
      this.ffRef})
      : super._();

  @override
  TodoRecord rebuild(void Function(TodoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoRecordBuilder toBuilder() => new TodoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TodoRecord &&
        title == other.title &&
        description == other.description &&
        date == other.date &&
        isDone == other.isDone &&
        userImage == other.userImage &&
        createdBy == other.createdBy &&
        items == other.items &&
        views == other.views &&
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
                                $jc($jc(0, title.hashCode),
                                    description.hashCode),
                                date.hashCode),
                            isDone.hashCode),
                        userImage.hashCode),
                    createdBy.hashCode),
                items.hashCode),
            views.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TodoRecord')
          ..add('title', title)
          ..add('description', description)
          ..add('date', date)
          ..add('isDone', isDone)
          ..add('userImage', userImage)
          ..add('createdBy', createdBy)
          ..add('items', items)
          ..add('views', views)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TodoRecordBuilder implements Builder<TodoRecord, TodoRecordBuilder> {
  _$TodoRecord? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

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

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TodoRecordBuilder() {
    TodoRecord._initializeBuilder(this);
  }

  TodoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _date = $v.date;
      _isDone = $v.isDone;
      _userImage = $v.userImage;
      _createdBy = $v.createdBy;
      _items = $v.items?.toBuilder();
      _views = $v.views?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TodoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TodoRecord;
  }

  @override
  void update(void Function(TodoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TodoRecord build() => _build();

  _$TodoRecord _build() {
    _$TodoRecord _$result;
    try {
      _$result = _$v ??
          new _$TodoRecord._(
              title: title,
              description: description,
              date: date,
              isDone: isDone,
              userImage: userImage,
              createdBy: createdBy,
              items: _items?.build(),
              views: _views?.build(),
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
            r'TodoRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
