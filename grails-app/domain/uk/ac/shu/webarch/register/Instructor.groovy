package uk.ac.shu.webarch.register

class Instructor {



  String instructorName
  String instructorId



  Set sessions



  static constraints = {
    instructorName(nullable:false, blank:false,maxSize:256);
    instructorId(nullable:false, blank:false,maxSize:20);


  }



  static hasMany = [sessions: Session]

 

}
