import 'dart:convert';
import 'package:flutter_app/model/pokemon.dart';
import 'package:flutter_app/apiclient/pokemon_api_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';

void main() {
  group('PokemonApiClient', () {
    test('fetchPokemon - リクエスト成功時にmodelとしてレスポンスを返却すること', () async {
      final mockHttpClient = MockClient((request) async {
        return http.Response(
          jsonEncode({
            'id': 1,
            'name': 'bulbasaur',
            'types': [
              {
                'slot': 1,
                'type': {'name': 'grass'}
              },
              {
                'slot': 2,
                'type': {'name': 'poison'}
              },
            ],
            'sprites': {
              'other': {
                'official-artwork': {'front_default': 'https://example.com'}
              }
            }
          }),
          200,
        );
      });

      final pokemonApiClient = PokemonApiClient(httpClient: mockHttpClient);
      final actual = await pokemonApiClient.fetchPokemon(1);
      const expected = Pokemon(
        id: 1,
        name: 'bulbasaur',
        types: ['grass', 'poison'],
        imageUrl: 'https://example.com',
      );

      expect(actual, equals(expected));
    });

    // 失敗した場合のテスト
    test('fetchPokemon - リクエスト失敗時に例外をスローすること', () {
      final mockHttpClient = MockClient((request) async {
        return http.Response('Not Found', 404);
      });

      final apiClient = PokemonApiClient(httpClient: mockHttpClient);
      expect(apiClient.fetchPokemon(1), throwsException);
    });
  });
}
