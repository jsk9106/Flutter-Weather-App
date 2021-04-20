import 'package:geolocator/geolocator.dart';

// 사용자 위치 정보 가져오기
class MyLocation{
  double latitude2;
  double longitude2;

  Future<void> getMyCurrentLocation() async{
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude2 = position.latitude;
      longitude2 = position.longitude;
    } catch (e) {
      print("error!!");
    }
  }
}