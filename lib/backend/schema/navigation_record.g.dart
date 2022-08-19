// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'navigation_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NavigationRecord> _$navigationRecordSerializer =
    new _$NavigationRecordSerializer();

class _$NavigationRecordSerializer
    implements StructuredSerializer<NavigationRecord> {
  @override
  final Iterable<Type> types = const [NavigationRecord, _$NavigationRecord];
  @override
  final String wireName = 'NavigationRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NavigationRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.linkName;
    if (value != null) {
      result
        ..add('link_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkIcon;
    if (value != null) {
      result
        ..add('link_icon')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkUrl;
    if (value != null) {
      result
        ..add('link_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  NavigationRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NavigationRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'link_name':
          result.linkName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link_icon':
          result.linkIcon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link_url':
          result.linkUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$NavigationRecord extends NavigationRecord {
  @override
  final String? linkName;
  @override
  final String? linkIcon;
  @override
  final String? linkUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NavigationRecord(
          [void Function(NavigationRecordBuilder)? updates]) =>
      (new NavigationRecordBuilder()..update(updates))._build();

  _$NavigationRecord._({this.linkName, this.linkIcon, this.linkUrl, this.ffRef})
      : super._();

  @override
  NavigationRecord rebuild(void Function(NavigationRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NavigationRecordBuilder toBuilder() =>
      new NavigationRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NavigationRecord &&
        linkName == other.linkName &&
        linkIcon == other.linkIcon &&
        linkUrl == other.linkUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, linkName.hashCode), linkIcon.hashCode),
            linkUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NavigationRecord')
          ..add('linkName', linkName)
          ..add('linkIcon', linkIcon)
          ..add('linkUrl', linkUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NavigationRecordBuilder
    implements Builder<NavigationRecord, NavigationRecordBuilder> {
  _$NavigationRecord? _$v;

  String? _linkName;
  String? get linkName => _$this._linkName;
  set linkName(String? linkName) => _$this._linkName = linkName;

  String? _linkIcon;
  String? get linkIcon => _$this._linkIcon;
  set linkIcon(String? linkIcon) => _$this._linkIcon = linkIcon;

  String? _linkUrl;
  String? get linkUrl => _$this._linkUrl;
  set linkUrl(String? linkUrl) => _$this._linkUrl = linkUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NavigationRecordBuilder() {
    NavigationRecord._initializeBuilder(this);
  }

  NavigationRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _linkName = $v.linkName;
      _linkIcon = $v.linkIcon;
      _linkUrl = $v.linkUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NavigationRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NavigationRecord;
  }

  @override
  void update(void Function(NavigationRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NavigationRecord build() => _build();

  _$NavigationRecord _build() {
    final _$result = _$v ??
        new _$NavigationRecord._(
            linkName: linkName,
            linkIcon: linkIcon,
            linkUrl: linkUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
