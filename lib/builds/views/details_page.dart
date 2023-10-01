import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:yelan/builds/model/character.dart';
import 'package:yelan/core/utils.dart';
import 'package:yelan/images/widgets/character_image.dart';

class CharacterDetailsPage extends StatelessWidget {
  final Character character;
  final ColorScheme colorScheme;
  final String element;

  const CharacterDetailsPage({
    super.key,
    required this.character,
    required this.colorScheme,
    required this.element,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(StringUtils.capitalizeAll(character.name ?? '')),
      ),
      body: Observer(
        builder: (context) {
          return Column(
            children: [
              SizedBox(
                child: Center(
                  child: CharachterImage(name: character.name!),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: colorScheme.secondaryContainer,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0),
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...character.builds
                            .map((b) => _Build(characterBuild: b))
                            .toList()
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Build extends StatefulWidget {
  final Build characterBuild;
  const _Build({
    required this.characterBuild,
  });

  @override
  State<_Build> createState() => __BuildState();
}

class __BuildState extends State<_Build> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.characterBuild.role.toUpperCase(),
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox.fromSize(size: const Size(0, 16)),
            const Text(
              'Artifacts',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...widget.characterBuild.artifacts
                .map(
                  (a) => Text(
                    a,
                    style: const TextStyle(),
                  ),
                )
                .toList()
                .toList(),
            SizedBox.fromSize(size: const Size(0, 16)),
            const Text(
              'Weapons',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...widget.characterBuild.equipment
                .map((a) => Text(
                      a,
                      style: const TextStyle(),
                    ))
                .toList(),
            const SizedBox(height: 8.0),
          ],
        ),
      ),
    );
  }
}
