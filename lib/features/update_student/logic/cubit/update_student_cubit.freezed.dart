// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_student_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UpdateStudentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateStudentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateStudentState()';
}


}

/// @nodoc
class $UpdateStudentStateCopyWith<$Res>  {
$UpdateStudentStateCopyWith(UpdateStudentState _, $Res Function(UpdateStudentState) __);
}


/// Adds pattern-matching-related methods to [UpdateStudentState].
extension UpdateStudentStatePatterns on UpdateStudentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _UpdateStudentStateInitial value)?  updateStudentStateInitial,TResult Function( _UpdateStudentStateLoading value)?  updateStudentStateLoading,TResult Function( _UpdateStudentStateSuccess value)?  updateStudentStateSuccess,TResult Function( _UpdateStudentStateFailure value)?  updateStudentStateFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UpdateStudentStateInitial() when updateStudentStateInitial != null:
return updateStudentStateInitial(_that);case _UpdateStudentStateLoading() when updateStudentStateLoading != null:
return updateStudentStateLoading(_that);case _UpdateStudentStateSuccess() when updateStudentStateSuccess != null:
return updateStudentStateSuccess(_that);case _UpdateStudentStateFailure() when updateStudentStateFailure != null:
return updateStudentStateFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _UpdateStudentStateInitial value)  updateStudentStateInitial,required TResult Function( _UpdateStudentStateLoading value)  updateStudentStateLoading,required TResult Function( _UpdateStudentStateSuccess value)  updateStudentStateSuccess,required TResult Function( _UpdateStudentStateFailure value)  updateStudentStateFailure,}){
final _that = this;
switch (_that) {
case _UpdateStudentStateInitial():
return updateStudentStateInitial(_that);case _UpdateStudentStateLoading():
return updateStudentStateLoading(_that);case _UpdateStudentStateSuccess():
return updateStudentStateSuccess(_that);case _UpdateStudentStateFailure():
return updateStudentStateFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _UpdateStudentStateInitial value)?  updateStudentStateInitial,TResult? Function( _UpdateStudentStateLoading value)?  updateStudentStateLoading,TResult? Function( _UpdateStudentStateSuccess value)?  updateStudentStateSuccess,TResult? Function( _UpdateStudentStateFailure value)?  updateStudentStateFailure,}){
final _that = this;
switch (_that) {
case _UpdateStudentStateInitial() when updateStudentStateInitial != null:
return updateStudentStateInitial(_that);case _UpdateStudentStateLoading() when updateStudentStateLoading != null:
return updateStudentStateLoading(_that);case _UpdateStudentStateSuccess() when updateStudentStateSuccess != null:
return updateStudentStateSuccess(_that);case _UpdateStudentStateFailure() when updateStudentStateFailure != null:
return updateStudentStateFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  updateStudentStateInitial,TResult Function()?  updateStudentStateLoading,TResult Function( StudentModel student)?  updateStudentStateSuccess,TResult Function( String errMessage)?  updateStudentStateFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UpdateStudentStateInitial() when updateStudentStateInitial != null:
return updateStudentStateInitial();case _UpdateStudentStateLoading() when updateStudentStateLoading != null:
return updateStudentStateLoading();case _UpdateStudentStateSuccess() when updateStudentStateSuccess != null:
return updateStudentStateSuccess(_that.student);case _UpdateStudentStateFailure() when updateStudentStateFailure != null:
return updateStudentStateFailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  updateStudentStateInitial,required TResult Function()  updateStudentStateLoading,required TResult Function( StudentModel student)  updateStudentStateSuccess,required TResult Function( String errMessage)  updateStudentStateFailure,}) {final _that = this;
switch (_that) {
case _UpdateStudentStateInitial():
return updateStudentStateInitial();case _UpdateStudentStateLoading():
return updateStudentStateLoading();case _UpdateStudentStateSuccess():
return updateStudentStateSuccess(_that.student);case _UpdateStudentStateFailure():
return updateStudentStateFailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  updateStudentStateInitial,TResult? Function()?  updateStudentStateLoading,TResult? Function( StudentModel student)?  updateStudentStateSuccess,TResult? Function( String errMessage)?  updateStudentStateFailure,}) {final _that = this;
switch (_that) {
case _UpdateStudentStateInitial() when updateStudentStateInitial != null:
return updateStudentStateInitial();case _UpdateStudentStateLoading() when updateStudentStateLoading != null:
return updateStudentStateLoading();case _UpdateStudentStateSuccess() when updateStudentStateSuccess != null:
return updateStudentStateSuccess(_that.student);case _UpdateStudentStateFailure() when updateStudentStateFailure != null:
return updateStudentStateFailure(_that.errMessage);case _:
  return null;

}
}

}

/// @nodoc


class _UpdateStudentStateInitial implements UpdateStudentState {
  const _UpdateStudentStateInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateStudentStateInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateStudentState.updateStudentStateInitial()';
}


}




/// @nodoc


class _UpdateStudentStateLoading implements UpdateStudentState {
  const _UpdateStudentStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateStudentStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UpdateStudentState.updateStudentStateLoading()';
}


}




/// @nodoc


class _UpdateStudentStateSuccess implements UpdateStudentState {
  const _UpdateStudentStateSuccess(this.student);
  

 final  StudentModel student;

/// Create a copy of UpdateStudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateStudentStateSuccessCopyWith<_UpdateStudentStateSuccess> get copyWith => __$UpdateStudentStateSuccessCopyWithImpl<_UpdateStudentStateSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateStudentStateSuccess&&(identical(other.student, student) || other.student == student));
}


@override
int get hashCode => Object.hash(runtimeType,student);

@override
String toString() {
  return 'UpdateStudentState.updateStudentStateSuccess(student: $student)';
}


}

/// @nodoc
abstract mixin class _$UpdateStudentStateSuccessCopyWith<$Res> implements $UpdateStudentStateCopyWith<$Res> {
  factory _$UpdateStudentStateSuccessCopyWith(_UpdateStudentStateSuccess value, $Res Function(_UpdateStudentStateSuccess) _then) = __$UpdateStudentStateSuccessCopyWithImpl;
@useResult
$Res call({
 StudentModel student
});


$StudentModelCopyWith<$Res> get student;

}
/// @nodoc
class __$UpdateStudentStateSuccessCopyWithImpl<$Res>
    implements _$UpdateStudentStateSuccessCopyWith<$Res> {
  __$UpdateStudentStateSuccessCopyWithImpl(this._self, this._then);

  final _UpdateStudentStateSuccess _self;
  final $Res Function(_UpdateStudentStateSuccess) _then;

/// Create a copy of UpdateStudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? student = null,}) {
  return _then(_UpdateStudentStateSuccess(
null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentModel,
  ));
}

/// Create a copy of UpdateStudentState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StudentModelCopyWith<$Res> get student {
  
  return $StudentModelCopyWith<$Res>(_self.student, (value) {
    return _then(_self.copyWith(student: value));
  });
}
}

/// @nodoc


class _UpdateStudentStateFailure implements UpdateStudentState {
  const _UpdateStudentStateFailure(this.errMessage);
  

 final  String errMessage;

/// Create a copy of UpdateStudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UpdateStudentStateFailureCopyWith<_UpdateStudentStateFailure> get copyWith => __$UpdateStudentStateFailureCopyWithImpl<_UpdateStudentStateFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UpdateStudentStateFailure&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errMessage);

@override
String toString() {
  return 'UpdateStudentState.updateStudentStateFailure(errMessage: $errMessage)';
}


}

/// @nodoc
abstract mixin class _$UpdateStudentStateFailureCopyWith<$Res> implements $UpdateStudentStateCopyWith<$Res> {
  factory _$UpdateStudentStateFailureCopyWith(_UpdateStudentStateFailure value, $Res Function(_UpdateStudentStateFailure) _then) = __$UpdateStudentStateFailureCopyWithImpl;
@useResult
$Res call({
 String errMessage
});




}
/// @nodoc
class __$UpdateStudentStateFailureCopyWithImpl<$Res>
    implements _$UpdateStudentStateFailureCopyWith<$Res> {
  __$UpdateStudentStateFailureCopyWithImpl(this._self, this._then);

  final _UpdateStudentStateFailure _self;
  final $Res Function(_UpdateStudentStateFailure) _then;

/// Create a copy of UpdateStudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMessage = null,}) {
  return _then(_UpdateStudentStateFailure(
null == errMessage ? _self.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
