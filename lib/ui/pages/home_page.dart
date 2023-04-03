import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_bloc_app/bloc/character_bloc.dart';
import 'package:rick_bloc_app/data/repositories/character_repositories.dart';
import 'package:rick_bloc_app/ui/pages/search_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final repository = CharecterRepository();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black45,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headline3,
        ),
        centerTitle: true,
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepository: repository),
        child: Container(
            decoration: const BoxDecoration(color: Colors.black87),
            child: const SearchPage()),
      ),
    );
  }
}
