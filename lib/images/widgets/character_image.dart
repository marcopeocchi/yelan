import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yelan/core/container.dart';
import 'package:yelan/images/store/images_store.dart';

class CharachterImage extends StatefulWidget {
  final String name;
  const CharachterImage({super.key, required this.name});

  @override
  State<CharachterImage> createState() => _CharachterImageState();
}

class _CharachterImageState extends State<CharachterImage> {
  late ImagesStore store;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = InjectionContainer.sl();
    store.getImagesByName(widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return switch (store.state) {
          StoreState.loading => SizedBox(
              height: MediaQuery.of(context).size.height / 3.5,
              child: const Center(child: CircularProgressIndicator()),
            ),
          StoreState.remote => Image.network(
              store.uri!,
              filterQuality: FilterQuality.high,
              height: MediaQuery.of(context).size.height / 3.5,
              alignment: Alignment.bottomCenter,
            ),
          StoreState.local => Image.file(
              File(store.uri!),
              filterQuality: FilterQuality.high,
              height: MediaQuery.of(context).size.height / 3.5,
              alignment: Alignment.bottomCenter,
            )
        };
      },
    );
  }
}
