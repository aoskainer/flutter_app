import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/constant/ad_unit_test_id.dart';
import 'package:go_router/go_router.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class GoogleAdmobRewardedPage extends StatefulWidget {
  const GoogleAdmobRewardedPage({super.key});

  @override
  State<GoogleAdmobRewardedPage> createState() => _GoogleAdmobRewardedState();
}

class _GoogleAdmobRewardedState extends State<GoogleAdmobRewardedPage> {
  RewardedAd? _rewardedAd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リワード広告'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            onPressed: () => context.go('/login'),
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (_rewardedAd != null) {
              _rewardedAd?.show(
                onUserEarnedReward: (ad, reward) {
                  debugPrint('ユーザーが報酬を獲得しました。');
                },
              );
            } else {
              debugPrint('まだ広告が読み込まれていないので何もしませんでした。');
            }
          },
          child: const Text('広告を表示'),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  @override
  void dispose() {
    _rewardedAd?.dispose();
    super.dispose();
  }

  void _loadAd() {
    RewardedAd.load(
      adUnitId: Platform.isAndroid
          ? AdUnitTestId.rewarded.android
          : AdUnitTestId.rewarded.ios,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          ad.fullScreenContentCallback = FullScreenContentCallback(
            onAdShowedFullScreenContent: (ad) {
              debugPrint('広告を表示しました。');
            },
            onAdImpression: (ad) {
              debugPrint('広告が表示されました。');
            },
            onAdFailedToShowFullScreenContent: (ad, err) {
              debugPrint('フルスクリーン広告の表示に失敗しました。: $err');
            },
            onAdWillDismissFullScreenContent: (ad) {
              debugPrint('広告が閉じられます。');
            },
            onAdDismissedFullScreenContent: (ad) {
              debugPrint('広告を閉じました。');
            },
            onAdClicked: (ad) {
              debugPrint('広告をクリックしました。');
            },
          );
          _rewardedAd = ad;
          debugPrint('広告の読み込みが完了しました。: $ad');
        },
        onAdFailedToLoad: (err) {
          debugPrint('広告の読み込みに失敗しました。: $err');
        },
      ),
    );
  }
}
