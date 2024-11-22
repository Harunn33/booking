enum LocalStorageKey {
  languageCode('language_code'),
  isRememberMe('is_remember_me'),
  token('token'),
  categoriesCache('categories_cache'),
  categoriesCacheTimestamp('categories_cache_timestamp'),
  productsCache('products_cache'),
  productsCacheTimestamp('products_cache_timestamp');

  const LocalStorageKey(this.value);
  final String value;
}
