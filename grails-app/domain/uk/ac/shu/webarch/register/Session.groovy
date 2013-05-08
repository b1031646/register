package uk.ac.shu.webarch.register

class Session {


  String sessionId
  String sessionName
  Instructor instructor
  Module module

	// Here i implement a "toString()" method to return a more sensible value instead of the id for display purposes // 

	String toString() {
        return sessionName
    }

// A session has a set of registrationSheets and a set of enrollments //

  Set registrationSheets
  Set enrollments

// A session has many registrationSheets of type RegistrationSheet and many enrollments of type Enrollment //

  static hasMany = [registrationSheets: RegistrationSheet, enrollments: Enrollment]

// Both are mappedBy the session attribute //

  static mappedBy = [registrationSheets: "session", enrollments: "session"]


  static constraints = {
    sessionId(nullable:false, blank:false, maxSize:20);
    sessionName(nullable:false, blank:false, maxSize:80);
    instructor(nullable:false, blank:false);
    module(nullable:false, blank:false);
  }


  static mapping = {
    instructor column:'instructor_fk'
    module column:'module_fk'
	enrollments sort:"id", order:"asc" // This sorts the enrollments set in ascending order so it doesn't shuffle on page refresh in the view //
	registrationSheets sort:"id", order:"asc" // This sorts the registrationSheets set in ascending order so it doesn't shuffle on page refresh in the view //

  }
}
