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
  }


  static mapping = {
    instructor column:'instructor_fk'
    module column:'module_fk'



  }
}
