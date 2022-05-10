import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pokemon/Controllers/pokemon_controller.dart';

class ViewPokemon extends StatelessWidget {
  // const ViewPokemon({Key? key}) : super(key: key);
  final pokemonController = Get.put(PokemonController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("POKEMON"),
      ),
      body: Container(
        child: Obx(() {
          return ListView.builder(
            itemCount: pokemonController.pokemon.length,
            itemBuilder: (context, index) {
              return Text(pokemonController.pokemon[index].name);
            },
          );
        }),
      ),
    );
  }
}
