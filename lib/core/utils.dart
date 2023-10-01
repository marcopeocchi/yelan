class StringUtils {
  static String capitalize(String string) {
    return '${string[0].toUpperCase()}${string.substring(1)}';
  }

  static String capitalizeAll(String string) {
    return string
        .split(' ')
        .map((s) => '${s[0].toUpperCase()}${s.substring(1)} ')
        .join();
  }
}
