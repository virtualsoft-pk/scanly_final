extension StringExtension on String {
  String capitalizeF() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}
