import 'dart:io';
import 'dart:core';
//import 'package:LoginProgram/coursesModule.dart' as coursesModule;
void main(){

  var use = OpenElective();
  var use1 =  BranchElective();
  var option = 'Y';
  do {
    print('Enter type of user: 1. Admin 2. Student');
    //Reads integer input
    var user_type = int.parse(stdin.readLineSync());
    if (user_type == 1) {
      print('Enter course type: 1.Open Elective 2.Branch Elective');
      var course_type = int.parse(stdin.readLineSync());
      if (course_type == 1) {
        print('Enter course name and course code');
        //var inp = stdin.readLineSync();
        //Splitting the single line input into two strings for name and code
        List input = stdin.readLineSync().split(' ');
        String Name = input[0];
        String Code = input[1];
        use.adder(Name, Code);
      }
      else if (course_type == 2) {
        print('Enter course name and course code');
        List input = stdin.readLineSync().split(' ');
        String Name = input[0];
        String Code = input[1];
        var yr = Code[2];
        var br = Code.substring(0,2);
        use1.adder(Name, Code, yr ,br);
      }
    }
    else if (user_type == 2) {
      print('Enter branch and year');
      List input = stdin.readLineSync().split(' ');
      String br = input[0];
      String yr = input[1];
      use.view();
      use1.view(yr, br);
    }
    print('Do you want to login again? [Y/N]');
    option = stdin.readLineSync();
  }while(option == 'Y' || option == 'y');
}
class OpenElective{
  List<String> courseCode = [];
  List<String> courseName = [];

  void adder(String Name,String Code){
    courseCode.add(Code);
    courseName.add(Name);
  }

  void view(){
    for(var i = 0; i<courseCode.length; ++i){
      print(courseCode[i]+' '+courseName[i]);
    }
  }
}

class BranchElective{
  List<String> courseCode=[],year=[],branch=[];
  List<String> courseName=[];

  void adder(String Name,String Code,String y, String b){
    courseCode.add(Code); courseName.add(Name);
    year.add(y); branch.add(b);
  }

  void view(String yr,String br){
    for(var i = 0; i<courseCode.length; ++i){
      if(year[i] == yr && branch[i] == br) {
        print(courseCode[i]+' '+courseName[i]);
      }
    }
  }
}