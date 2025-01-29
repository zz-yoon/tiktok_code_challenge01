# tiktok_code_challenge01
tiktok_code_challenge01

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
- 만약 화면당 하나의 인풋이 아니라 여러개의 인풋이어도 바깥을 클릭해서 onFocus를 푸는게 맞을까???
- GestureDetector() + SingleChildScrollView() 터치에 대해서 문제가 없는가??? 
- next라는 버튼이 submit 이라고 생각했는데 키보드의 done을 누를때도 넘어가게 할 수 있구나? 
- ios, aos 앱을 다 만들게 된다면 material style vs cupertino style?
- 

# 새로웠던 것을 배운날! 뚜둔
- scaffold body background 색상이 회색이었다니?! 이 부분을 한번에 theme으로 main.dart에 설정이 가능하다니!!
- brithday 날짜에 접근하는 법 : default 날짜 가능 max(12년전? -> 12살부터 이용가능)
- *TextField는 당연하겠지만서도 String 으로 다룬다. phone + email 문자열로 유효성검사하면됨!

# 아쉬었던 점
- 1. 아직은 화면별로 폴더를 만들었는데 시간이 된다면 다시 기능별로 나누어서 작업을 해보고싶다
- 2. 확실히 gaps, sizes 를 사용하던 버릇이 없다보니 자꾸 사용을 해야함에도 불구하고 size를 직접 사용해버려서 어떤 곳은 gaps,sizes 를 이용하고 어떤 곳은 직접 사이즈를 적었더라.. 나중에 수정해보고자한다!
- 3.
- 4. 
- 5.