package uk.ac.shu.webarch.register

class Student {



  String studentName
  String studentId
  String studentNotes


	// Here i implement a "toString()" method on courseName so that it returns the course name instead of the id for display purposes // 

	String toString() {
        return studentName
    }


  Set enrollments
  Set registerEntries



  static hasMany = [enrollments: Enrollment, registerEntries: RegisterEntry]
  static mappedBy = [enrollments: "student", registerEntries: "student"]



 static constraints = {
    studentName(nullable:false, blank:false, maxSize:80);
    studentId(nullable:false, blank:false, maxSize:20);
    studentNotes(nullable:true, blank:true);
  }


    static mapping = {
    studentNotes column: 'student_notes', type:'text'



  }
}
