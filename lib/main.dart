import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yelan/builds/store/characters_store.dart';
import 'package:yelan/builds/views/element_page.dart';
import 'package:yelan/core/container.dart';
import 'package:yelan/core/elements.dart';
import 'package:yelan/core/theme_changer.dart';
import 'package:yelan/images/store/images_store.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await InjectionContainer.init();
  await InjectionContainer.sl.allReady();

  if (!kReleaseMode) {
    final SharedPreferences preferences = InjectionContainer.sl();
    await preferences.clear();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => InjectionContainer.sl<ImagesStore>()),
        Provider(create: (context) => InjectionContainer.sl<CharactersStore>()),
        ChangeNotifierProvider(create: (context) => ThemeChanger()),
      ],
      child: const ThemedApp(),
    );
  }
}

class ThemedApp extends StatelessWidget {
  const ThemedApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genshin builds',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Provider.of<ThemeChanger>(context).getSeedColor,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Provider.of<ThemeChanger>(context).getSeedColor,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final pages = [
      ElementPage(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Theme.of(context).brightness,
        ),
        mainColor: Colors.red,
        element: GenshinElement.pyro,
      ),
      ElementPage(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Theme.of(context).brightness,
        ),
        mainColor: Colors.blue,
        element: GenshinElement.hydro,
      ),
      ElementPage(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal,
          brightness: Theme.of(context).brightness,
        ),
        mainColor: Colors.teal,
        element: GenshinElement.anemo,
      ),
      ElementPage(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Theme.of(context).brightness,
        ),
        mainColor: Colors.deepPurple,
        element: GenshinElement.electro,
      ),
      ElementPage(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Theme.of(context).brightness,
        ),
        mainColor: Colors.green,
        element: GenshinElement.dendro,
      ),
      ElementPage(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightBlue,
          brightness: Theme.of(context).brightness,
        ),
        mainColor: Colors.lightBlue,
        element: GenshinElement.cryo,
      ),
      ElementPage(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Theme.of(context).brightness,
        ),
        mainColor: Colors.amber,
        element: GenshinElement.geo,
      ),
    ];
    return PageView.builder(
      itemBuilder: (context, index) {
        return pages[index];
      },
    );
  }
}
