class LoremPicsum {
  String image({int? width, int? height, String? seed}) =>
      _imageUrl(width, height, null, null, seed);

  String blurredImage({int? width, int? height, String? seed, int? blur}) =>
      _imageUrl(width, height, null, blur, seed);

  String grayImage({int? width, int? height, String? seed}) =>
      _imageUrl(width, height, true, null, seed);

  String _imageUrl(
    int? w,
    int? h,
    bool? grayscale,
    int? blur,
    String? seed,
  ) {
    final width = w ?? 640;
    final height = h ?? 480;

    var url = 'https://picsum.photos';

    if (seed != null) url += '/seed/$seed';

    url += '/$width/$height';

    if (grayscale != null && blur != null)
      url += '?grayscale&blur=${blur.clamp(1, 10)}';
    else if (grayscale != null)
      url += '?grayscale';
    else if (blur != null) url += '?blur=${blur.clamp(1, 10)}';

    return url;
  }
}