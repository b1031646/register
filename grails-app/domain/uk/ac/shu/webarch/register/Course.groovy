package uk.ac.shu.webarch.register

class Course {
  
  String courseId
  String courseName
  String courseDescription

	
	// Here i implement a "toString()" method on courseName so that it returns the course name instead of the id for display purposes // 

	String toString() {
        return courseName
    }

  Set modules



  static hasMany = [modules: Module]
  
  static mappedBy = [modules: "course"]



  static constraints = {
    courseId(nullable:false, blank:false, maxSize:20);
    courseName(nullable:false, blank:false, maxSize:80);
    courseDescription(nullable:true, blank:true);
  }


  static mapping = {
    courseDescription column: 'course_description', type:'text'

  }
}
