extension MapSafeAdd on Map {
  void addSafe(dynamic key, dynamic value) {
    if (value != null) this[key] = value;
  }
}
