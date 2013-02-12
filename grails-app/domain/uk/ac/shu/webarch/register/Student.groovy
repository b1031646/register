package uk.ac.shu.webarch.register

class Student {



  String studentName
  String studentId
  String studentNotes



  Set enrollments
  Set registerEnteries



  static hasMany = [enrollments: Enrollment, registerEnteries: RegisterEntry]



 static constraints = {
    studentName(nullable:false, blank:false,maxSize:256);
    studentId(nullable:false, blank:false,maxSize:256);
  }


    static mapping = {
    studentNotes column: 'student_notes', type:'text'



  }
}
