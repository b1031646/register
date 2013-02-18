package uk.ac.shu.webarch.register

class Session {


  String sessionId
  String sessionName
  Instructor instructor
  Module module



  Set registrationSheets
  Set enrollments



  static hasMany = [registrationSheets: RegistrationSheet, enrollments: Enrollment]

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



  }
}
