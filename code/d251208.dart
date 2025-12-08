/// 별 피라미드 출력하기

void main() {
  //         *
  //        ***
  //       *****
  //      *******
  //     *********
  //    ***********
  //   *************
  //  ***************

  //print('        *        ');
  //print('       ***       ');
  //print('      *****      ');
  //print('     *******     ');
  //print('    *********    ');
  //print('   ***********   ');
  //print('  *************  ');
  //print(' *************** ');

  int star = 0;
  for (var i = 0; i < 7; i++) {
    //
    //
    //
    //
    int currentStar = 1 + star;
    String space = " " * (7 - i);
    print(space + '*' * currentStar);
    star = star + 2;
  }
  //

  for (var i = 1; i <= 7; i--) {
    star = star - 2;
    int spaceCount = i + 1;
    print(' ' * spaceCount + '*' * star);
  }
}
