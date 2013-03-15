package uk.ac.shu.webarch.register

class Instructor {



  String instructorName
  String instructorId


	// Here i implement a "toString()" method to return a more sensible value instead of the id for display purposes // 

	String toString() {
        return instructorName
    }


  Set sessions



  static hasMany = [sessions: Session]



  static mappedBy = [sessions: "instructor"]


  static constraints = {
    instructorName(nullable:false, blank:false,maxSize:50);
    instructorId(nullable:false, blank:false,maxSize:20);
  }


 

}
