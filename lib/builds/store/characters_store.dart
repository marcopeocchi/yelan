import 'package:mobx/mobx.dart';
import 'package:yelan/builds/model/character.dart';
import 'package:yelan/builds/service/builds_service.dart';
import 'package:yelan/core/elements.dart';
import 'package:yelan/core/failures.dart';

part 'characters_store.g.dart';

enum StoreState { initial, loading, loaded }

class CharactersStore extends _CharactersStoreBase with _$CharactersStore {
  CharactersStore(BuildsService service) : super(service);
}

abstract class _CharactersStoreBase with Store {
  final BuildsService _service;

  _CharactersStoreBase(this._service);

  @observable
  Failure? failure;

  @observable
  List<Character>? characters;

  @computed
  StoreState get state {
    if (characters == null) {
      return StoreState.loading;
    }
    if (characters!.isEmpty) {
      return StoreState.initial;
    }
    return StoreState.loaded;
  }

  @action
  Future<void> getByElement(GenshinElement element) async {
    characters = null;
    final either = await _service.getByElement(element).run();

    either.fold(
      (l) => failure = l,
      (r) => characters = r,
    );
  }
}
