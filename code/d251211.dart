import 'dart:io';

void main() {
  List<Student> studentList = [];

  // 파일 읽기
  File file = File('students.txt');

  //  - 인자로 넘겨준 문자열을 기준으로 분리해서 List에 만들어줌
  // lines : ["홍길동,90", "김철수,80", "지은성,100", ...]
  List<String> lines = file.readAsLinesSync(); // 한 줄씩 읽어서 리스트로 반환

  for (String nameAndScore in lines) {
    List<String> nameAndScoreList = nameAndScore.split(','); // 이름과 점수 분리
    String name = nameAndScoreList[0];

    // "ABC"라는 문자열을 파싱해서 에러났을 때 null 이 반환되는데, null 일땐 0을 abc라는 변수에 넣어라!
    // int abc = int.tryParse("ABC") ?? 0;
    int score = int.tryParse(nameAndScoreList[1]) ?? 0;

    // 이름과 점수를 담아 객체 만들기
    Student s = Student(name, score);
    studentList.add(s);
  }

  // 이름과 점수가 각각 다른리스트에서 관리된다면
  // 만약 점수 리스트에서 값이 제거된다면
  // 이름리스트와 점수리스트 간 index들이 맞지 않음!
  // 그래서 하나의 클래스에 이름과 점수를 함께 담을수 있게 구현해서
  // 그 클래스 객체에 이름과 점수를 함께 담은 후
  // 리스트에 그 객체를 저장할거임
  // 그 클래스 이름 Student 라고 할거임!

  // 출력
  for (Student s in studentList) {
    print('이름: ${s.name}, 점수: ${s.score}');
  }
}

class Student {
  String name;
  int score;
  Student(this.name, this.score);
}
