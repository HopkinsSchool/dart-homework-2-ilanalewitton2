import 'dart:io';


void main(){
 List<int>numbers = [8, 9, 15, 24];
 print("The numbrs are $numbers. What oppertation do you want to use to combine them?\n1. addition\n2. multiplication");
  int option = int.parse(stdin.readLineSync()!);
 int result = operation(option, numbers);


 if (option == 1){
   print("The sum of the numbers is $result.");
 }
 else {
   print("The product of the numbers is $result.");
 }

}


int operation(int choice, List<int> numbers){
 
 switch(choice){
   case 1:
   int sum = 0;
   for(var i=0; i<4; i++){
     sum += numbers[i];
   }
   return sum;

   case 2:
   int product = 1;
   for( var i=0; i<4; i++){
     product *= numbers[i];
   }
   return product;

   default:
   print("No valid input. Returning 0.");
   return 0;
 }

}

