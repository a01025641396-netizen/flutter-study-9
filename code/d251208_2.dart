///
/////

void main() {
  // 2는 고정
  // 곱해지는 수가 1씩 반복적으로 증가

  //첫번쨰 단계 : 1부터 9까지 반복문으로 출력하기
  //두번쨰 미션 : 구구단 2단부터 9까지 출력하기

  for (var j = 2; j <= 9; j++) {
    mulTadle(j);
  }
  mulTadle(3);
  mulTadle(7);
}

//print('2*1=2');
//print('2*1=4');
// print('2*1=6');
//print('2*1=8');
//print('2*1=10');
//print('2*1=12');
//print('2*1=14');
//print('2*1=16');
//print('2*1=18');
//print('2*1=20');

/// 특정 단수의 구구단을 출력하는 함수!
///
///[mumber]

void mulTadle(int number) {
  //함수 시작
  for (var i = 1; i <= 9; i++) {
    print("$number*$i=${number * i}");
  }
  //함수 끝
}
