import 'package:LoginProgram/LoginProgram.dart' as LoginProgram;
import 'dart:io';

void main(List<String> arguments) {
  //print('Hello world: ${LoginProgram.calculate()}!');
  //Pre-existing usernames and passwords
  var passes = {'name1':'new_pass' , 'name2':'new_2','name3':'new_3'};

  print('Enter Username:');
  var user = stdin.readLineSync();
  print('Enter Password:');
  var pass = stdin.readLineSync();
  if(passes[user] == pass){
    print('Loading...');
    //Time delay of 4 seconds
    sleep(Duration(seconds:4));
    print('Logged In Successfully!!');
  }
  else{
    print('Loading...');
    sleep(Duration(seconds:4));
    print('Logged In Failed! Make sure username and password is entered correctly');
  }
}

