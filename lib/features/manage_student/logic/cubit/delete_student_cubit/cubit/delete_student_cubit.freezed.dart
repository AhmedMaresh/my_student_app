// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_student_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DeleteStudentState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteStudentState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteStudentState()';
}


}

/// @nodoc
class $DeleteStudentStateCopyWith<$Res>  {
$DeleteStudentStateCopyWith(DeleteStudentState _, $Res Function(DeleteStudentState) __);
}


/// Adds pattern-matching-related methods to [DeleteStudentState].
extension DeleteStudentStatePatterns on DeleteStudentState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _DeleteStudentInitial value)?  deleteStudentInitial,TResult Function( _DeleteStudentLoading value)?  deleteStudentLoading,TResult Function( _DeleteStudentSuccess value)?  deleteStudentSuccess,TResult Function( _DeleteStudentFailure value)?  deleteStudentFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeleteStudentInitial() when deleteStudentInitial != null:
return deleteStudentInitial(_that);case _DeleteStudentLoading() when deleteStudentLoading != null:
return deleteStudentLoading(_that);case _DeleteStudentSuccess() when deleteStudentSuccess != null:
return deleteStudentSuccess(_that);case _DeleteStudentFailure() when deleteStudentFailure != null:
return deleteStudentFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _DeleteStudentInitial value)  deleteStudentInitial,required TResult Function( _DeleteStudentLoading value)  deleteStudentLoading,required TResult Function( _DeleteStudentSuccess value)  deleteStudentSuccess,required TResult Function( _DeleteStudentFailure value)  deleteStudentFailure,}){
final _that = this;
switch (_that) {
case _DeleteStudentInitial():
return deleteStudentInitial(_that);case _DeleteStudentLoading():
return deleteStudentLoading(_that);case _DeleteStudentSuccess():
return deleteStudentSuccess(_that);case _DeleteStudentFailure():
return deleteStudentFailure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _DeleteStudentInitial value)?  deleteStudentInitial,TResult? Function( _DeleteStudentLoading value)?  deleteStudentLoading,TResult? Function( _DeleteStudentSuccess value)?  deleteStudentSuccess,TResult? Function( _DeleteStudentFailure value)?  deleteStudentFailure,}){
final _that = this;
switch (_that) {
case _DeleteStudentInitial() when deleteStudentInitial != null:
return deleteStudentInitial(_that);case _DeleteStudentLoading() when deleteStudentLoading != null:
return deleteStudentLoading(_that);case _DeleteStudentSuccess() when deleteStudentSuccess != null:
return deleteStudentSuccess(_that);case _DeleteStudentFailure() when deleteStudentFailure != null:
return deleteStudentFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  deleteStudentInitial,TResult Function()?  deleteStudentLoading,TResult Function( StudentModel student)?  deleteStudentSuccess,TResult Function( String errMessage)?  deleteStudentFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeleteStudentInitial() when deleteStudentInitial != null:
return deleteStudentInitial();case _DeleteStudentLoading() when deleteStudentLoading != null:
return deleteStudentLoading();case _DeleteStudentSuccess() when deleteStudentSuccess != null:
return deleteStudentSuccess(_that.student);case _DeleteStudentFailure() when deleteStudentFailure != null:
return deleteStudentFailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  deleteStudentInitial,required TResult Function()  deleteStudentLoading,required TResult Function( StudentModel student)  deleteStudentSuccess,required TResult Function( String errMessage)  deleteStudentFailure,}) {final _that = this;
switch (_that) {
case _DeleteStudentInitial():
return deleteStudentInitial();case _DeleteStudentLoading():
return deleteStudentLoading();case _DeleteStudentSuccess():
return deleteStudentSuccess(_that.student);case _DeleteStudentFailure():
return deleteStudentFailure(_that.errMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  deleteStudentInitial,TResult? Function()?  deleteStudentLoading,TResult? Function( StudentModel student)?  deleteStudentSuccess,TResult? Function( String errMessage)?  deleteStudentFailure,}) {final _that = this;
switch (_that) {
case _DeleteStudentInitial() when deleteStudentInitial != null:
return deleteStudentInitial();case _DeleteStudentLoading() when deleteStudentLoading != null:
return deleteStudentLoading();case _DeleteStudentSuccess() when deleteStudentSuccess != null:
return deleteStudentSuccess(_that.student);case _DeleteStudentFailure() when deleteStudentFailure != null:
return deleteStudentFailure(_that.errMessage);case _:
  return null;

}
}

}

/// @nodoc


class _DeleteStudentInitial implements DeleteStudentState {
  const _DeleteStudentInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteStudentInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteStudentState.deleteStudentInitial()';
}


}




/// @nodoc


class _DeleteStudentLoading implements DeleteStudentState {
  const _DeleteStudentLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteStudentLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'DeleteStudentState.deleteStudentLoading()';
}


}




/// @nodoc


class _DeleteStudentSuccess implements DeleteStudentState {
  const _DeleteStudentSuccess(this.student);
  

 final  StudentModel student;

/// Create a copy of DeleteStudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteStudentSuccessCopyWith<_DeleteStudentSuccess> get copyWith => __$DeleteStudentSuccessCopyWithImpl<_DeleteStudentSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteStudentSuccess&&const DeepCollectionEquality().equals(other.student, student));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(student));

@override
String toString() {
  return 'DeleteStudentState.deleteStudentSuccess(student: $student)';
}


}

/// @nodoc
abstract mixin class _$DeleteStudentSuccessCopyWith<$Res> implements $DeleteStudentStateCopyWith<$Res> {
  factory _$DeleteStudentSuccessCopyWith(_DeleteStudentSuccess value, $Res Function(_DeleteStudentSuccess) _then) = __$DeleteStudentSuccessCopyWithImpl;
@useResult
$Res call({
 StudentModel student
});




}
/// @nodoc
class __$DeleteStudentSuccessCopyWithImpl<$Res>
    implements _$DeleteStudentSuccessCopyWith<$Res> {
  __$DeleteStudentSuccessCopyWithImpl(this._self, this._then);

  final _DeleteStudentSuccess _self;
  final $Res Function(_DeleteStudentSuccess) _then;

/// Create a copy of DeleteStudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? student = freezed,}) {
  return _then(_DeleteStudentSuccess(
freezed == student ? _self.student : student // ignore: cast_nullable_to_non_nullable
as StudentModel,
  ));
}


}

/// @nodoc


class _DeleteStudentFailure implements DeleteStudentState {
  const _DeleteStudentFailure(this.errMessage);
  

 final  String errMessage;

/// Create a copy of DeleteStudentState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeleteStudentFailureCopyWith<_DeleteStudentFailure> get copyWith => __$DeleteStudentFailureCopyWithImpl<_DeleteStudentFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeleteStudentFailure&&(identical(other.errMessage, errMessage) || other.errMessage == errMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errMessage);

@override
String toString() {
  return 'DeleteStudentState.deleteStudentFailure(errMessage: $errMessage)';
}


}

/// @nodoc
abstract mixin class _$DeleteStudentFailureCopyWith<$Res> implements $DeleteStudentStateCopyWith<$Res> {
  factory _$DeleteStudentFailureCopyWith(_DeleteStudentFailure value, $Res Function(_DeleteStudentFailure) _then) = __$DeleteStudentFailureCopyWithImpl;
@useResult
$Res call({
 String errMessage
});




}
/// @nodoc
class __$DeleteStudentFailureCopyWithImpl<$Res>
    implements _$DeleteStudentFailureCopyWith<$Res> {
  __$DeleteStudentFailureCopyWithImpl(this._self, this._then);

  final _DeleteStudentFailure _self;
  final $Res Function(_DeleteStudentFailure) _then;

/// Create a copy of DeleteStudentState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errMessage = null,}) {
  return _then(_DeleteStudentFailure(
null == errMessage ? _self.errMessage : errMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
