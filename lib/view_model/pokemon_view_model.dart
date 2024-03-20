import 'package:flutter_app/apiclient/pokemon_api_client.dart';
import 'package:flutter_app/model/pokemon.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_view_model.g.dart';

@riverpod
class PokemonViewModel extends _$PokemonViewModel {
  @override
  FutureOr<Pokemon> build() async {
    return _fetchPokemon();
  }

  Future<Pokemon> _fetchPokemon() async {
    final pokemonApiClient = PokemonApiClient();
    final pokemon = await pokemonApiClient.fetchPokemon(1);
    return pokemon;
  }
}
