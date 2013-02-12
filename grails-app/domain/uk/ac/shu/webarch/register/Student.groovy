package uk.ac.shu.webarch.register

class Student {



  String studentName
  String studentID
  String studentNotes



  Set enrollments
  Set registerEnteries



  static hasMany = [enrollments: Enrollment, registerEnteries: RegisterEntry]



    static mapping = {
    studentNotes column: 'student_notes', type:'text'



  }
}
