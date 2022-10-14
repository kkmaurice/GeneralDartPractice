
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
    
    updateUserAccountBalance();

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
    print('\n');
    print('**********Results*************');
    print('Your name is: $name');
    print('Your email address is: $emailAddress');
    print('Your gender is: $gender');
    print('You come from: $country');
    print('Your favorite car is: $favoriteCar');
    print('Your age is: $age');
    print('*********Results**************');
    print('');
  }

  void updateUserAccountBalance(){
    var response = getUserResponse('Do you want to use your account(Yes/No)?');
    if(response.isNotEmpty){
      if(response.toLowerCase() == 'yes'){
        var answer1 = getUserResponse('Do you want to deposit or withdraw from your account(Deposit/Withdraw)?');
        if(answer1.isNotEmpty && answer1.toLowerCase() == 'deposit'){
          deposit();
        }else if(answer1.isNotEmpty && answer1.toLowerCase() == 'withdraw'){
          withdraw();
        }else{
          print('$answer1 is not valid');
        }
      }else{
        return;
      }
    }
  }

  void deposit(){
    var depositAmount = getUserResponse('How much do you want to deposit?');
    var userDepositAmount = int.parse(depositAmount);
    accountBalance+=userDepositAmount;
    print('Your new balance is: $accountBalance');
  }

  void withdraw(){
    var withdrawAmount = getUserResponse('How much do you want to withdraw?');
    var userWithdrawAmount = int.parse(withdrawAmount);
    if(accountBalance > userWithdrawAmount){
      accountBalance-=userWithdrawAmount;
      print('Your new balance is: $accountBalance');
    }
  }
  
