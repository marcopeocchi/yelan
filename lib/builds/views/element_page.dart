import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import 'package:yelan/builds/model/character.dart';
import 'package:yelan/builds/store/characters_store.dart';
import 'package:yelan/builds/views/details_page.dart';
import 'package:yelan/core/elements.dart';
import 'package:yelan/core/theme_changer.dart';
import 'package:yelan/core/utils.dart';
import 'package:yelan/core/widgets/failure.dart';

class ElementPage extends StatefulWidget {
  final Color mainColor;
  final ColorScheme colorScheme;
  final GenshinElement element;

  const ElementPage({
    super.key,
    required this.mainColor,
    required this.colorScheme,
    required this.element,
  });

  @override
  State<ElementPage> createState() => _ElementPageState();
}

class _ElementPageState extends State<ElementPage> {
  late CharactersStore store;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    store = Provider.of<CharactersStore>(context);
    store.getByElement(widget.element);
  }

  Future navigateToDetail(Character character) async {
    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CharacterDetailsPage(
          character: character,
          colorScheme: widget.colorScheme,
          element: widget.element.name.toLowerCase(),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () async {
      Provider.of<ThemeChanger>(
        context,
        listen: false,
      ).setSeedColor(widget.mainColor);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringUtils.capitalize(widget.element.name)),
        backgroundColor: widget.colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RefreshIndicator(
          onRefresh: () => store.getByElement(widget.element),
          child: Observer(
            builder: (context) {
              if (store.failure != null) {
                return Center(child: FailureWidget(failure: store.failure!));
              }
              if (store.state == StoreState.initial) {
                return const Text('Empty...');
              }
              if (store.state == StoreState.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              return ListView.builder(
                itemCount: store.characters!.length,
                itemBuilder: (context, index) {
                  final character = store.characters![index];
                  return Card(
                    child: ListTile(
                      title: Text(StringUtils.capitalizeAll(
                        character.name ?? '',
                      )),
                      trailing: Badge.count(
                        count: character.builds.length,
                        backgroundColor: widget.colorScheme.inversePrimary,
                        textColor: widget.colorScheme.inverseSurface,
                      ),
                      onTap: () => navigateToDetail(
                        character,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
