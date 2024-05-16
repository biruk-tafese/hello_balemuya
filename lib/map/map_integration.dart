import 'package:gebetamap/gebetamap.dart';

class MapIntegration {
  static Future<ResponseData> getRoute(List<Map<String, double>> points) async {
    String apiKey =
        "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6IjIxY2MzMjYyLWEwOGYtNDgyZi05ZDcxLWU4OTg4ZTU4MDM5MSJ9.ZSyOYxcYfVbu6btly4596xYFOkILKlfU-fTBWGcgvu8"; // Replace "YOUR_API_KEY_HERE" with your actual GebetaMap API key

    try {
      GebetaMapRequest gmr = GebetaMapRequest();
      return await gmr.tss(points, apiKey);
    } catch (e) {
      print('Error fetching route: $e');
      return ResponseData(
        statuss: 'ERROR',
        messages: 'Error fetching route: $e',
        path: null,
        totalDist: null,
      );
    }
  }
}
