package uk.ac.shu.webarch.register






class Instructor {



	String instructorName
	String instructorId
	String password	
	String role = "Instructor" // This is part of the role based authentication, each instructor is assigned a role either Admin or Instructor //


	// Here i implement a "toString()" method to return a more sensible value instead of the id for display purposes // 

	String toString() {
        return instructorName
    }

// An instructor teaches a set of sessions //

  Set sessions


// An instructor has many sessions of type Session //

  static hasMany = [sessions: Session]

// Mapped by the instructor attribute //

  static mappedBy = [sessions: "instructor"]


  static constraints = {
	instructorName(nullable:false, blank:false,maxSize:50);
	instructorId(nullable:false, blank:false,maxSize:20);
	password blank:false, size:5..15, matches:/[\S]+/;
	role(inList:["Instructor", "Admin"]) // This displays a list consisiting of Instructor or Admin, when a user is created their role is set to one of these //
  }


 

}
