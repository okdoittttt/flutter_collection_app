# flutter_collection_app

Flutter와 Firebase를 사용한 도감 앱.

## 사용한 라이브러리 목록

- cupertino_icons: ^1.0.2 # icon
- firebase_core: ^2.14.0 # Firebase
- firebase_auth: ^4.6.3 # Firebase
- flutterfire_ui: ^0.4.3+20 # Firebase
- cloud_firestore: ^4.8.2 # Firebase
- firebase_storage: ^11.2.4 # Firebase
- file_picker: ^5.3.2  # 파일 업로드
- flutter_rating_bar: ^4.0.1 # 레이팅바
- url_launcher: ^6.1.12 # 지도, 전화

## 구현완료한 목록
- (Firebase) 회원가입, 로그인, ID/PW 찾기, 로그아웃
- (Firebase) 프로필(이미지) 불러오기
- (Firebase) Firestore 데이터 불러오기
- Store 페이지 식당, 상점, ETC로 나누어 각 해당하는 데이터 Firestore에 불러오기
- 식당 상세 페이지: 위젯 생성 후 해당하는 데이터를 Navigator.push()를 통해 데이터 넘겨주는 방식으로 구현
- 식당 상세 페이지: 지도, 전화걸기, Rating 기능

## 구현해야할 목록
- 프로필 상세 페이지
- 식당, 상점 상세 페이지 간단한 디자인 추가
- 도감