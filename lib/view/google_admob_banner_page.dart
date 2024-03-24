import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/constant/ad_unit_test_id.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class GoogleAdmobBannerPage extends StatefulWidget {
  const GoogleAdmobBannerPage({super.key});

  @override
  State<GoogleAdmobBannerPage> createState() => _GoogleAdmobBannerState();
}

class _GoogleAdmobBannerState extends State<GoogleAdmobBannerPage> {
  BannerAd? _bannerAd;
  final AdSize _adSize = AdSize.banner;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutter App'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () => context.go('/login'),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: _bannerAd != null
          ? SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: _adSize.width.toDouble(),
                    height: _adSize.height.toDouble(),
                    child: AdWidget(ad: _bannerAd!),
                  ),
                ),
              ),
            )
          : Container(),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  void _loadAd() {
    final bannerAd = BannerAd(
      size: _adSize,
      adUnitId: Platform.isAndroid
          ? AdUnitTestId.fixedSizeBanner.android
          : AdUnitTestId.fixedSizeBanner.ios,
      request: const AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          if (!mounted) {
            ad.dispose();
            return;
          }
          setState(() {
            _bannerAd = ad as BannerAd;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );

    bannerAd.load();
  }
}
