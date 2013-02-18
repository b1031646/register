package uk.ac.shu.webarch.register

class Course {
  
  String courseId
  String courseName
  String Description



  Set modules



  static hasMany = [modules: Module]
  
  static mappedBy = [modules: "course"]

  static constraints = {
    courseId maxSize: 20


  }


  static mapping = {
    description column: 'course_desc', type:'text'



  }
}
