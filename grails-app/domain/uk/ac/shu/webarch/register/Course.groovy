package uk.ac.shu.webarch.register

class Course {
  
  String courseId
  String courseName
  String courseDescription

	
	// Here i implement a "toString()" method to return a more sensible value instead of the id for display purposes // ss

	String toString() {
        return courseName
    }

	// A course has a set of modules associated with it //

  Set modules


 // A course has many modules of type Module //

  static hasMany = [modules: Module]
  
// Mapped by the course attribute //

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
