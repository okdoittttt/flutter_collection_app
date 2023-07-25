# flutter_collection_app

Flutter와 Firebase를 사용한 도감 앱.

## 사용한 라이브러리 목록

- cupertino_icons: ^1.0.2
- firebase_core: ^2.14.0
- firebase_auth: ^4.6.3
- flutterfire_ui: ^0.4.3+20
- cloud_firestore: ^4.8.2
- firebase_storage: ^11.2.4
- file_picker: ^5.3.2
- flutter_rating_bar: ^4.0.1
- url_launcher: ^6.1.12
- tflite: ^1.1.2

## 구현완료한 목록
- (Firebase) 회원가입, 로그인, ID/PW 찾기, 로그아웃
- (Firebase) 프로필(이미지) 불러오기
- (Firebase) Firestore 데이터 불러오기
- Store 페이지 식당, 상점, ETC로 나누어 각 해당하는 데이터 Firestore에 불러오기
- 식당 상세 페이지: 위젯 생성 후 해당하는 데이터를 Navigator.push()를 통해 데이터 넘겨주는 방식으로 구현
- 식당 상세 페이지: 지도, 전화걸기, Rating 기능
- 도감 리스트 페이지 : 가로로 3개 이미지 출력, 각 이미지 클릭시 상세 페이지 이동
- 도감 등록 (미완) : 파이어베이스 업로드 테스트(이미지 업로드 기능 테스트),

## 구현해야할 목록
- 프로필 상세 페이지
- 도감 등록 전후 DB 구성
- 이미지 분류 후 도감 이미지와 비교하여 참 혹은 거짓 판별 AI