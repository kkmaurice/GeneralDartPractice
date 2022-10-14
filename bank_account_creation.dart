
  import 'dart:io';
import 'dart:math';
void main() {
  getUserInformation();
}

int accountBalance = 10000;
  String name = '';
  String emailAddress = '';
  String gender = '';
  String country = '';
  String favoriteFood = '';
  String hobby = '';
  String friend = '';
  String favoriteCar = '';
  int age = 0;

  void getUserInformation(){
    while(true){
      name = getUserResponse('What is your name?');
    emailAddress = getValidEmail('Enter your email address');
    gender = getUserResponse('What\'s your gender?');
    country = getUserResponse('Which country do you come from?');
    favoriteFood = getUserResponse('What\'s your favorite food?');
    hobby = getUserResponse('What\'s your Hobby?');
    friend = getUserResponse('Who is your friend?');
    favoriteCar = getUserResponse('What\'s your favorite car?');
    age = getUserAge();

    //call get user information here
    printResults();

    exit(0);
    }
  }
 // invoke a question and users response
  String getUserResponse(String question){
    stdout.write('$question: \n');
    return stdin.readLineSync()!;
  }

  // validate email
  String getValidEmail(String question){
    stdout.write('$question:\n');
    String email=stdin.readLineSync()!;
    while(!(email.contains('@') && email.contains('.'))){
      print('Email must have @ and a dot');
      email = stdin.readLineSync()!;
    }
     return email;
    }

    // String get age input in 
    int getUserAge(){
      stdout.write('Enter your age:\n');
      return int.parse(stdin.readLineSync()!);
    }
  

  void printResults(){
    print('Your name is: $name');
    print('Your email address is: $emailAddress');
    print('Your gender is: $gender');
    print('You come from: $country');
    print('Your favorite car is: $favoriteCar');
    print('Your age is: $age');
  }
  
