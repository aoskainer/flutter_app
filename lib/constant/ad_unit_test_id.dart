enum AdUnitTestId {
  fixedSizeBanner(
    "ca-app-pub-3940256099942544/6300978111",
    "ca-app-pub-3940256099942544/2934735716",
  ),
  rewarded(
    "ca-app-pub-3940256099942544/5224354917",
    "ca-app-pub-3940256099942544/1712485313",
  );

  final String android;
  final String ios;

  const AdUnitTestId(
    this.android,
    this.ios,
  );
}
