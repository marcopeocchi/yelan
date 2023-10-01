// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ImagesStore on _ImagesStoreBase, Store {
  Computed<StoreState>? _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_ImagesStoreBase.state'))
          .value;

  late final _$failureAtom =
      Atom(name: '_ImagesStoreBase.failure', context: context);

  @override
  Failure? get failure {
    _$failureAtom.reportRead();
    return super.failure;
  }

  @override
  set failure(Failure? value) {
    _$failureAtom.reportWrite(value, super.failure, () {
      super.failure = value;
    });
  }

  late final _$uriAtom = Atom(name: '_ImagesStoreBase.uri', context: context);

  @override
  String? get uri {
    _$uriAtom.reportRead();
    return super.uri;
  }

  @override
  set uri(String? value) {
    _$uriAtom.reportWrite(value, super.uri, () {
      super.uri = value;
    });
  }

  late final _$getImagesByNameAsyncAction =
      AsyncAction('_ImagesStoreBase.getImagesByName', context: context);

  @override
  Future<void> getImagesByName(String name) {
    return _$getImagesByNameAsyncAction.run(() => super.getImagesByName(name));
  }

  @override
  String toString() {
    return '''
failure: ${failure},
uri: ${uri},
state: ${state}
    ''';
  }
}
