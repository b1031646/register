package uk.ac.shu.webarch.register

class Student {



  String studentName
  String studentId
  String studentNotes


	// Here i implement a "toString()" method to return a more sensible value instead of the id for display purposes // 

	String toString() {
        return studentName
    }

// A student has a set of registerEntries and a set of enrollments //

  Set enrollments
  Set registerEntries


// A student has many enrollments of type Enrollment and many registerEntries of type RegisterEntry //

  static hasMany = [enrollments: Enrollment, registerEntries: RegisterEntry]

// Enrollments and registerEntries are mapped by the student attribute //

  static mappedBy = [enrollments: "student", registerEntries: "student"]



 static constraints = {
    studentName(nullable:false, blank:false, maxSize:80);
    studentId(nullable:false, blank:false, maxSize:20);
    studentNotes(nullable:true, blank:true);
  }


    static mapping = {
    studentNotes column: 'student_notes', type:'text'
	enrollments sort:"id", order:"asc"  // This sorts the enrollments set in ascending order so it doesn't shuffle on page refresh in the view //
	registerEntries sort:"id", order:"asc"// This sorts the registerEntries set in ascending order so it doesn't shuffle on page refresh in the view //


  }
}
