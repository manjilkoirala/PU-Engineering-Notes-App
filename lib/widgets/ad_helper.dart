import 'dart:io';

import 'package:google_mobile_ads/google_mobile_ads.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return "ca-app-pub-6773492687881086/6558765101";
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
