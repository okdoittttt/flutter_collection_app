import 'package:url_launcher/url_launcher.dart';

class MapAndCall {
  // Map
  Future<void> openmap() async {
    // 위도(latitude)와 경도(longitude) 값을 설정해주세요
    double latitude = 35.14131459999994;
    double longitude = 129.0449433999997;

    String googleMapsUrl = 'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
    String appleMapsUrl = 'https://maps.apple.com/?ll=$latitude,$longitude';

    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else if (await canLaunch(appleMapsUrl)) {
      await launch(appleMapsUrl);
    } else {
      print('지도 열 수 없음!!!!!!!!!!!!!!');
    }
  }

  // Call
  Future<void> call() async {
    const phoneNumber = 01000000000; // 전화번호 샘플
    if (await canLaunch('tel:$phoneNumber')) {
      await launch('tel:$phoneNumber');
    } else {
      print('전화를 걸 수 없습니다.');
    }
  }
}
