class Student {
  String name;
  int age;
  int gradeLevel;

  Student(this.name, this.age, this.gradeLevel);

  void printStudentInfo() {
    print('Student: $name, Age: $age, Grade Level: $gradeLevel');
  }
}

// Teacher class
class Teacher {
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void printTeacherInfo() {
    print('Teacher: $name, Age: $age, Subject: $subject');
  }
}

// Class to create student and teacher objects
class School {
  void createObjects() {
    // Creating a student object
    Student student1 = Student('Alice', 15, 9);
    // Creating a teacher object
    Teacher teacher1 = Teacher('Mr. Smith', 35, 'Math');

    // Printing out student and teacher information
    student1.printStudentInfo();
    teacher1.printTeacherInfo();
  }
}

void main() {
  School school = School();
  school.createObjects();
}
