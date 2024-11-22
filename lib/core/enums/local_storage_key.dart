enum LocalStorageKey {
  languageCode('language_code'),
  isRememberMe('is_remember_me'),
  token('token');

  const LocalStorageKey(this.value);
  final String value;
}
