import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:fpdart/fpdart.dart';
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
                            .mapWithIndex(
                              (b, i) => _Build(
                                characterBuild: b,
                                index: i,
                                length: character.builds.length,
                              ),
                            )
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

class _Build extends StatelessWidget {
  final Build characterBuild;
  final int length;
  final int index;

  const _Build({
    required this.characterBuild,
    required this.length,
    required this.index,
  });

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
              characterBuild.optimal
                  ? '${characterBuild.role.toUpperCase()} (optimal)'
                  : characterBuild.role.toUpperCase(),
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Artifacts',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...characterBuild.artifacts
                .map((a) => Text('• $a'))
                .toList()
                .toList(),
            const SizedBox(height: 16.0),
            const Text(
              'Weapons',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...characterBuild.equipment.map((a) => Text('• $a')).toList(),
            const SizedBox(height: 16.0),
            const Text(
              'Artifacts main stats',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Wrap(
              children: [
                const Text('Sands: '),
                Text(
                  characterBuild.artifactsMainStats.sands ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
            Wrap(
              children: [
                const Text('Goblet: '),
                Text(
                  characterBuild.artifactsMainStats.goblet ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
            Wrap(
              children: [
                const Text('Circlet: '),
                Text(
                  characterBuild.artifactsMainStats.circlet ?? '',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Talents priority (more cardinal to less)',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ...characterBuild.talentPriority.map((a) => Text('• $a')).toList(),
            const SizedBox(height: 32.0),
            index != length - 1
                ? Divider(color: Theme.of(context).dividerColor)
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
