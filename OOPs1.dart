// Imports
import 'dart:io';

// Interface
abstract class Animal {
  void makeSound();
}

// Base class
class Mammal {
  void breathe() {
    print('Mammal is breathing');
  }
}

// Derived class that implements an interface and
// overrides a method
class Dog extends Mammal implements Animal {
  @override
  void makeSound() {
    print('Woof woof!');
  }

  void fetch() {
    print('Dog is fetching the ball');
  }
}

// Method to read data from a file and initialize an instance of a class
Dog initializeDogFromFile(String filePath) {
  late Dog myDog;

  try {
    List<String> data = File(filePath).readAsLinesSync();
    myDog = Dog();
    // Initialize dog properties based on file data
    // Assuming the file contains the dog's name and age
    myDog.makeSound();
    myDog.fetch();
  } catch (e) {
    print('Error reading file: $e');
  }

  return myDog;
}

// Method that demonstrates the use of a loop
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
  }
}

void main() {
  // Initialize a Dog instance from a file
  String filePath = 'dog_data.txt';
  Dog myDog = initializeDogFromFile(filePath);

  if (myDog != null) {
    // Demonstrate the use of a loop
    printNumbers(5);
  } else {
    print('Dog instance could not be initialized.');
  }
}
