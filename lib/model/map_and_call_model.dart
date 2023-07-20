import 'package:url_launcher/url_launcher.dart';

class MapAndCall {
  // Map
  Future<void> openmap(String latitude, String longitude) async {
    double parsedLatitude = double.parse(latitude);
    double parsedLongitude = double.parse(longitude);

    String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=$parsedLatitude,$parsedLongitude';
    String appleMapsUrl = 'https://maps.apple.com/?ll=$parsedLatitude,$parsedLongitude';

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else if (await canLaunch(appleMapsUrl)) {
      await launch(appleMapsUrl);
    } else {
      print('지도 열 수 없음!!!!!!!!!!!!!!');
    }
  }

  // Call
  Future<void> call(String tel) async {
    if (await canLaunch('tel:$tel')) {
      await launch('tel:$tel');
    } else {
      print('전화를 걸 수 없습니다.');
    }
  }
}
