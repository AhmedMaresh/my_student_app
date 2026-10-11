// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'student_cubit/students_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$StudentsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StudentsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentsState()';
}


}

/// @nodoc
class $StudentsStateCopyWith<$Res>  {
$StudentsStateCopyWith(StudentsState _, $Res Function(StudentsState) __);
}


/// Adds pattern-matching-related methods to [StudentsState].
extension StudentsStatePatterns on StudentsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _StudentsInitial value)?  studentsInitial,TResult Function( _StudentsLoading value)?  studentsLoading,TResult Function( _StudentsSuccess value)?  studentsSuccess,TResult Function( _StudentsError value)?  studentsError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StudentsInitial() when studentsInitial != null:
return studentsInitial(_that);case _StudentsLoading() when studentsLoading != null:
return studentsLoading(_that);case _StudentsSuccess() when studentsSuccess != null:
return studentsSuccess(_that);case _StudentsError() when studentsError != null:
return studentsError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _StudentsInitial value)  studentsInitial,required TResult Function( _StudentsLoading value)  studentsLoading,required TResult Function( _StudentsSuccess value)  studentsSuccess,required TResult Function( _StudentsError value)  studentsError,}){
final _that = this;
switch (_that) {
case _StudentsInitial():
return studentsInitial(_that);case _StudentsLoading():
return studentsLoading(_that);case _StudentsSuccess():
return studentsSuccess(_that);case _StudentsError():
return studentsError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _StudentsInitial value)?  studentsInitial,TResult? Function( _StudentsLoading value)?  studentsLoading,TResult? Function( _StudentsSuccess value)?  studentsSuccess,TResult? Function( _StudentsError value)?  studentsError,}){
final _that = this;
switch (_that) {
case _StudentsInitial() when studentsInitial != null:
return studentsInitial(_that);case _StudentsLoading() when studentsLoading != null:
return studentsLoading(_that);case _StudentsSuccess() when studentsSuccess != null:
return studentsSuccess(_that);case _StudentsError() when studentsError != null:
return studentsError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  studentsInitial,TResult Function()?  studentsLoading,TResult Function( List<StudentModel> students)?  studentsSuccess,TResult Function( String errMessage)?  studentsError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StudentsInitial() when studentsInitial != null:
return studentsInitial();case _StudentsLoading() when studentsLoading != null:
return studentsLoading();case _StudentsSuccess() when studentsSuccess != null:
return studentsSuccess(_that.students);case _StudentsError() when studentsError != null:
return studentsError(_that.errMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  studentsInitial,required TResult Function()  studentsLoading,required TResult Function( List<StudentModel> students)  studentsSuccess,required TResult Function( String errMessage)  studentsError,}) {final _that = this;
switch (_that) {
case _StudentsInitial():
return studentsInitial();case _StudentsLoading():
return studentsLoading();case _StudentsSuccess():
return studentsSuccess(_that.students);case _StudentsError():
return studentsError(_that.errMessage);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  studentsInitial,TResult? Function()?  studentsLoading,TResult? Function( List<StudentModel> students)?  studentsSuccess,TResult? Function( String errMessage)?  studentsError,}) {final _that = this;
switch (_that) {
case _StudentsInitial() when studentsInitial != null:
return studentsInitial();case _StudentsLoading() when studentsLoading != null:
return studentsLoading();case _StudentsSuccess() when studentsSuccess != null:
return studentsSuccess(_that.students);case _StudentsError() when studentsError != null:
return studentsError(_that.errMessage);case _:
  return null;

}
}

}

/// @nodoc


class _StudentsInitial implements StudentsState {
  const _StudentsInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentsInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentsState.studentsInitial()';
}


}




/// @nodoc


class _StudentsLoading implements StudentsState {
  const _StudentsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'StudentsState.studentsLoading()';
}


}




/// @nodoc


class _StudentsSuccess implements StudentsState {
  const _StudentsSuccess(final  List<StudentModel> students): _students = students;
  

 final  List<StudentModel> _students;
 List<StudentModel> get students {
  if (_students is EqualUnmodifiableListView) return _students;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_students);
}


/// Create a copy of StudentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentsSuccessCopyWith<_StudentsSuccess> get copyWith => __$StudentsSuccessCopyWithImpl<_StudentsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentsSuccess&&const DeepCollectionEquality().equals(other._students, _students));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_students));

@override
String toString() {
  return 'StudentsState.studentsSuccess(students: $students)';
}


}

/// @nodoc
abstract mixin class _$StudentsSuccessCopyWith<$Res> implements $StudentsStateCopyWith<$Res> {
  factory _$StudentsSuccessCopyWith(_StudentsSuccess value, $Res Function(_StudentsSuccess) _then) = __$StudentsSuccessCopyWithImpl;
@useResult
$Res call({
 List<StudentModel> students
});




}
/// @nodoc
class __$StudentsSuccessCopyWithImpl<$Res>
    implements _$StudentsSuccessCopyWith<$Res> {
  __$StudentsSuccessCopyWithImpl(this._self, this._then);

  final _StudentsSuccess _self;
  final $Res Function(_StudentsSuccess) _then;

/// Create a copy of StudentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? students = null,}) {
  return _then(_StudentsSuccess(
null == students ? _self._students : students // ignore: cast_nullable_to_non_nullable
as List<StudentModel>,
  ));
}


}

/// @nodoc


class _StudentsError implements StudentsState {
  const _StudentsError(this.errMessage);
  

 final  String errMessage;

/// Create a copy of StudentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StudentsErrorCopyWith<_StudentsError> get copyWith => __$StudentsErrorCopyWithImpl<_StudentsError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StudentsError&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errMessage);

@override
String toString() {
  return 'StudentsState.studentsError(errMessage: $errMessage)';
}


}

/// @nodoc
abstract mixin class _$StudentsErrorCopyWith<$Res> implements $StudentsStateCopyWith<$Res> {
  factory _$StudentsErrorCopyWith(_StudentsError value, $Res Function(_StudentsError) _then) = __$StudentsErrorCopyWithImpl;
@useResult
$Res call({
 String errMessage
});




}
/// @nodoc
class __$StudentsErrorCopyWithImpl<$Res>
    implements _$StudentsErrorCopyWith<$Res> {
  __$StudentsErrorCopyWithImpl(this._self, this._then);

  final _StudentsError _self;
  final $Res Function(_StudentsError) _then;

/// Create a copy of StudentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMessage = null,}) {
  return _then(_StudentsError(
null == errMessage ? _self.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
