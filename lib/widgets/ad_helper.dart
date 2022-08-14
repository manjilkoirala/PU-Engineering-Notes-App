import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-3940256099942544/6300978111";
    } else if (Platform.isIOS) {
      return "ca-app-pub-3940256099942544/2934735716";
    } else {
      throw UnsupportedError("Unsupported platform");
    }
  }
}

BannerAd getbannerAd() {
  return BannerAd(
    adUnitId: AdHelper.bannerAdUnitId,
    size: AdSize.fullBanner,
    request: const AdRequest(),
    listener: BannerAdListener(
      onAdLoaded: (_) {},
      onAdFailedToLoad: (ad, error) {
        ad.dispose();
      },
    ),
  )..load();
}
