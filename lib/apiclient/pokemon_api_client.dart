import 'dart:convert';

import 'package:flutter_app/model/pokemon.dart';
import 'package:http/http.dart' as http;

class PokemonApiClient {
  final _baseUrl = 'https://pokeapi.co/api/v2';

  Future<Pokemon> fetchPokemon(int id) async {
    final response = await http.get(Uri.parse('$_baseUrl/pokemon/$id'));
    if (response.statusCode == 200) {
      return Pokemon.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('error fetching pokemon');
    }
  }
}
