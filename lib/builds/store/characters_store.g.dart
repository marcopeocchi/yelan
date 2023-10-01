// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CharactersStore on _CharactersStoreBase, Store {
  Computed<StoreState>? _$stateComputed;

  @override
  StoreState get state =>
      (_$stateComputed ??= Computed<StoreState>(() => super.state,
              name: '_CharactersStoreBase.state'))
          .value;

  late final _$failureAtom =
      Atom(name: '_CharactersStoreBase.failure', context: context);

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

  late final _$charactersAtom =
      Atom(name: '_CharactersStoreBase.characters', context: context);

  @override
  List<Character>? get characters {
    _$charactersAtom.reportRead();
    return super.characters;
  }

  @override
  set characters(List<Character>? value) {
    _$charactersAtom.reportWrite(value, super.characters, () {
      super.characters = value;
    });
  }

  late final _$getByElementAsyncAction =
      AsyncAction('_CharactersStoreBase.getByElement', context: context);

  @override
  Future<void> getByElement(GenshinElement element) {
    return _$getByElementAsyncAction.run(() => super.getByElement(element));
  }

  @override
  String toString() {
    return '''
failure: ${failure},
characters: ${characters},
state: ${state}
    ''';
  }
}
