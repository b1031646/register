package uk.ac.shu.webarch.register

class Instructor {



  String instructorName
  String instructorID



  Set sessions



  static hasMany = [sessions: Session]

 

}
