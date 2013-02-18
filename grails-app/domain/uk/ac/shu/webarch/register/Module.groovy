package uk.ac.shu.webarch.register

class Module {

  String moduleId
  String moduleName
  String moduleDescription
  Course course


  Set sessions

  static hasMany = [sessions: Session]

  static mappedBy = [sessions: "module"]

    static constraints = {
    }


static mapping = {
    course column:'course_fk'
  }


}
