package uk.ac.shu.webarch.register

class Student {



  String studentName
  String studentId
  String studentNotes



  Set enrollments
  Set registerEntries



  static hasMany = [enrollments: Enrollment, registerEntries: RegisterEntry]
  static mappedBy = [enrollments: "student", registerEntries: "student"]



 static constraints = {
    studentName(nullable:false, blank:false,maxSize:256);
    studentId(nullable:false, blank:false,maxSize:256);
  }


    static mapping = {
    studentNotes column: 'student_notes', type:'text'



  }
}
