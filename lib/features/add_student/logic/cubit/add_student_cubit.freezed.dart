// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_student_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AddStudentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddStudentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddStudentState()';
}


}

/// @nodoc
class $AddStudentStateCopyWith<$Res>  {
$AddStudentStateCopyWith(AddStudentState _, $Res Function(AddStudentState) __);
}


/// Adds pattern-matching-related methods to [AddStudentState].
extension AddStudentStatePatterns on AddStudentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddStudentInitial value)?  addStudentInitial,TResult Function( _AddStudentLoading value)?  addStudentLoading,TResult Function( _AddStudentSuccess value)?  addStudentSuccess,TResult Function( _AddStudentFailure value)?  addStudentFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddStudentInitial() when addStudentInitial != null:
return addStudentInitial(_that);case _AddStudentLoading() when addStudentLoading != null:
return addStudentLoading(_that);case _AddStudentSuccess() when addStudentSuccess != null:
return addStudentSuccess(_that);case _AddStudentFailure() when addStudentFailure != null:
return addStudentFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddStudentInitial value)  addStudentInitial,required TResult Function( _AddStudentLoading value)  addStudentLoading,required TResult Function( _AddStudentSuccess value)  addStudentSuccess,required TResult Function( _AddStudentFailure value)  addStudentFailure,}){
final _that = this;
switch (_that) {
case _AddStudentInitial():
return addStudentInitial(_that);case _AddStudentLoading():
return addStudentLoading(_that);case _AddStudentSuccess():
return addStudentSuccess(_that);case _AddStudentFailure():
return addStudentFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddStudentInitial value)?  addStudentInitial,TResult? Function( _AddStudentLoading value)?  addStudentLoading,TResult? Function( _AddStudentSuccess value)?  addStudentSuccess,TResult? Function( _AddStudentFailure value)?  addStudentFailure,}){
final _that = this;
switch (_that) {
case _AddStudentInitial() when addStudentInitial != null:
return addStudentInitial(_that);case _AddStudentLoading() when addStudentLoading != null:
return addStudentLoading(_that);case _AddStudentSuccess() when addStudentSuccess != null:
return addStudentSuccess(_that);case _AddStudentFailure() when addStudentFailure != null:
return addStudentFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  addStudentInitial,TResult Function()?  addStudentLoading,TResult Function( StudentModel student)?  addStudentSuccess,TResult Function( String errMessage)?  addStudentFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddStudentInitial() when addStudentInitial != null:
return addStudentInitial();case _AddStudentLoading() when addStudentLoading != null:
return addStudentLoading();case _AddStudentSuccess() when addStudentSuccess != null:
return addStudentSuccess(_that.student);case _AddStudentFailure() when addStudentFailure != null:
return addStudentFailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  addStudentInitial,required TResult Function()  addStudentLoading,required TResult Function( StudentModel student)  addStudentSuccess,required TResult Function( String errMessage)  addStudentFailure,}) {final _that = this;
switch (_that) {
case _AddStudentInitial():
return addStudentInitial();case _AddStudentLoading():
return addStudentLoading();case _AddStudentSuccess():
return addStudentSuccess(_that.student);case _AddStudentFailure():
return addStudentFailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  addStudentInitial,TResult? Function()?  addStudentLoading,TResult? Function( StudentModel student)?  addStudentSuccess,TResult? Function( String errMessage)?  addStudentFailure,}) {final _that = this;
switch (_that) {
case _AddStudentInitial() when addStudentInitial != null:
return addStudentInitial();case _AddStudentLoading() when addStudentLoading != null:
return addStudentLoading();case _AddStudentSuccess() when addStudentSuccess != null:
return addStudentSuccess(_that.student);case _AddStudentFailure() when addStudentFailure != null:
return addStudentFailure(_that.errMessage);case _:
  return null;

}
}

}

/// @nodoc


class _AddStudentInitial implements AddStudentState {
  const _AddStudentInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddStudentInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddStudentState.addStudentInitial()';
}


}




/// @nodoc


class _AddStudentLoading implements AddStudentState {
  const _AddStudentLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddStudentLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AddStudentState.addStudentLoading()';
}


}




/// @nodoc


class _AddStudentSuccess implements AddStudentState {
  const _AddStudentSuccess(this.student);
  

 final  StudentModel student;

/// Create a copy of AddStudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddStudentSuccessCopyWith<_AddStudentSuccess> get copyWith => __$AddStudentSuccessCopyWithImpl<_AddStudentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddStudentSuccess&&(identical(other.student, student) || other.student == student));
}


@override
int get hashCode => Object.hash(runtimeType,student);

@override
String toString() {
  return 'AddStudentState.addStudentSuccess(student: $student)';
}


}

/// @nodoc
abstract mixin class _$AddStudentSuccessCopyWith<$Res> implements $AddStudentStateCopyWith<$Res> {
  factory _$AddStudentSuccessCopyWith(_AddStudentSuccess value, $Res Function(_AddStudentSuccess) _then) = __$AddStudentSuccessCopyWithImpl;
@useResult
$Res call({
 StudentModel student
});


$StudentModelCopyWith<$Res> get student;

}
/// @nodoc
class __$AddStudentSuccessCopyWithImpl<$Res>
    implements _$AddStudentSuccessCopyWith<$Res> {
  __$AddStudentSuccessCopyWithImpl(this._self, this._then);

  final _AddStudentSuccess _self;
  final $Res Function(_AddStudentSuccess) _then;

/// Create a copy of AddStudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? student = null,}) {
  return _then(_AddStudentSuccess(
null == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentModel,
  ));
}

/// Create a copy of AddStudentState
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


class _AddStudentFailure implements AddStudentState {
  const _AddStudentFailure(this.errMessage);
  

 final  String errMessage;

/// Create a copy of AddStudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddStudentFailureCopyWith<_AddStudentFailure> get copyWith => __$AddStudentFailureCopyWithImpl<_AddStudentFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddStudentFailure&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errMessage);

@override
String toString() {
  return 'AddStudentState.addStudentFailure(errMessage: $errMessage)';
}


}

/// @nodoc
abstract mixin class _$AddStudentFailureCopyWith<$Res> implements $AddStudentStateCopyWith<$Res> {
  factory _$AddStudentFailureCopyWith(_AddStudentFailure value, $Res Function(_AddStudentFailure) _then) = __$AddStudentFailureCopyWithImpl;
@useResult
$Res call({
 String errMessage
});




}
/// @nodoc
class __$AddStudentFailureCopyWithImpl<$Res>
    implements _$AddStudentFailureCopyWith<$Res> {
  __$AddStudentFailureCopyWithImpl(this._self, this._then);

  final _AddStudentFailure _self;
  final $Res Function(_AddStudentFailure) _then;

/// Create a copy of AddStudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMessage = null,}) {
  return _then(_AddStudentFailure(
null == errMessage ? _self.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
