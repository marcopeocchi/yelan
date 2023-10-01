import 'package:mobx/mobx.dart';
import 'package:yelan/core/failures.dart';
import 'package:yelan/images/service/images_service.dart';

part 'images_store.g.dart';

enum StoreState { local, remote, loading }

class ImagesStore extends _ImagesStoreBase with _$ImagesStore {
  ImagesStore(ImagesService service) : super(service);
}

abstract class _ImagesStoreBase with Store {
  final ImagesService _service;

  _ImagesStoreBase(this._service);

  @observable
  Failure? failure;

  @observable
  String? uri;

  @computed
  StoreState get state {
    if (uri == null) {
      return StoreState.loading;
    }
    if (uri!.startsWith("http")) {
      return StoreState.remote;
    }
    return StoreState.local;
  }

  @action
  Future<void> getImagesByName(String name) async {
    uri = null;
    final either = await _service.getImagesByName(name).run();

    either.fold(
      (l) => failure = l,
      (r) => uri = r,
    );
  }
}
