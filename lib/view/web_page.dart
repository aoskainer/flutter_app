import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class WebPage extends StatelessWidget {
  const WebPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Webページ遷移'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () => context.go('/login'),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: InkWell(
              onTap: () async {
                if (!await launchUrlWithPlatformDefault(
                    'https://flutter.dev')) {
                  throw Exception(
                      'Could not launch https://flutter.dev with platform default');
                }
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('アプリ内ブラウザ起動', style: TextStyle(fontSize: 16)),
                      Icon(Icons.arrow_forward_ios_rounded, size: 16),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: InkWell(
              onTap: () async {
                if (!await launchUrlWithExternalApplication(
                    'https://flutter.dev')) {
                  throw Exception(
                      'Could not launch https://flutter.dev with external application');
                }
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('外部ブラウザ起動', style: TextStyle(fontSize: 16)),
                      Icon(Icons.arrow_forward_ios_rounded, size: 16),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: InkWell(
              onTap: () {
                // TODO: WebView埋め込み表示
              },
              child: Card(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  width: double.infinity,
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('WebView埋め込み表示', style: TextStyle(fontSize: 16)),
                      Icon(Icons.arrow_forward_ios_rounded, size: 16),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<bool> launchUrlWithPlatformDefault(String uri) async {
    final url = Uri.parse(uri);
    return await launchUrl(url);
  }

  Future<bool> launchUrlWithExternalApplication(String uri) async {
    final url = Uri.parse(uri);
    return await launchUrl(url, mode: LaunchMode.externalApplication);
  }
}
