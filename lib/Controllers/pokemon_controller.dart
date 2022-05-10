import 'package:get/get.dart';
import 'package:pokemon/Models/Pokemon_model.dart';

class PokemonController extends GetxController {
  final pokemon = <PokemonModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getPokemon();
  }

  void getPokemon() async {
    var data = [
      PokemonModel(name: "pikachu", ulr: "abc"),
      PokemonModel(name: "mew", ulr: "abnn"),
      PokemonModel(name: "mewto", ulr: "bnnn"),
      PokemonModel(name: "dratini", ulr: "asas")
    ];

    pokemon.assignAll(data);
  }
}
