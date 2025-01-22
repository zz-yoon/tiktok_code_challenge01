# tiktok_code_challenge01
tiktok_code_challenge01


# 챌린지 요구 사항
## (1) Initial Screen:
  This is the first screen that the user sees when they open the app. It has three (3) buttons. When the user presses on "Create Account" navigate the user to the "Create Account" screen.
  사용자가 앱을 열면 가장 먼저 보게 되는 화면입니다. 이 화면에는 3개의 버튼이 있습니다. 사용자가 '계정 만들기'를 누르면 '계정 만들기' 화면으로 이동합니다.
## **(2) Create Account Screen:**
- This screen has a form with inputs for "Name", "Email" and "Date Of Birth".
- When the user writes on the inputs a green icon should show up next to the input.
- When all the inputs are filled, the "Next" button should be enabled.
- When the user presses on "Next" navigate the user to the "Customize Experience" screen.
- 이 화면에는 "이름", "이메일" 및 "생년월일"을 입력하는 양식이 있습니다.
- 사용자가 입력란에 글을 쓰면 입력란 옆에 녹색 아이콘이 표시되어야 합니다.
- 모든 입력란이 채워지면 "다음" 버튼이 활성화되어야 합니다.
- 사용자가 "다음"을 누르면 사용자를 "커스터마이징" 화면으로 이동합니다.
## **(3) Customize Experience Screen:**
- This screen should have a Switch input and a "Next" button.
- When the user enables the switch, the "Next" button should be enabled.
- 이 화면에는 스위치 입력과 "다음" 버튼이 있어야 합니다.
- 사용자가 스위치를 활성화하면 "다음" 버튼이 활성화되어야 합니다.

#  챌린지 접근 방법
- 강의 때 배운 것을 토대로 1차 구조 잡아보기
   - 각 강의마다 접목시킬 수 있는 부분들 바로바로 코드 진입 (시간관계상 회사와 병행하면서 과제 요구사항을 다 짜려면 이 방법도 나쁘지 않을 것 같아 바로 시도해보았다!)
- 필요한 pub file 들 정리 
  -  아이콘 : https://pub.dev/packages/font_awesome_flutter/install
    - https://fontawesome.com/ (일단 fontawesome 으로 해보자!)
    - svg : https://pub.dev/packages/flutter_svg/install

- *gitignore에서 android만 선택해주었었는데 ios도 선언해주자!! 
  

# 궁금한점 
- 화면크기에 따라서 overflow가 될 수도 있다는 가정하에 ₩SingleChildScrollView₩를 짰는데 그헣다면 모든 화면을 만들때 대부분 그렇게 하는것이 맞을까?에 대해서 고민해보게 되었다


# 새로웠던 것을 배운날! 뚜둔
- scaffold body background 색상이 회색이었다니?! 이 부분을 한번에 theme으로 main.dart에 설정이 가능하다니!!

- *TextField는 당연하겠지만서도 String 으로 다룬다. phone + email 문자열로 유효성검사하면됨!

# 아쉬었던 점
- 1. 아직은 화면별로 폴더를 만들었는데 시간이 된다면 다시 기능별로 나누어서 작업을 해보고싶다
- 2. 확실히 gaps, sizes 를 사용하던 버릇이 없다보니 자꾸 사용을 해야함에도 불구하고 size를 직접 사용해버려서 어떤 곳은 gaps,sizes 를 이용하고 어떤 곳은 직접 사이즈를 적었더라.. 나중에 수정해보고자한다!
- 3.
- 4. 
- 5.