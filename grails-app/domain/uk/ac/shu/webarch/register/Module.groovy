package uk.ac.shu.webarch.register

class Module {

  String moduleId
  String moduleName
  String moduleDescription
  Course course

	// Here i implement a "toString()" method on courseName so that it returns the course name instead of the id for display purposes // 

	String toString() {
        return moduleName
    }

  Set sessions

  static hasMany = [sessions: Session]

  static mappedBy = [sessions: "module"]

    static constraints = {

    moduleId(nullable:false, blank:false, maxSize:20);
    moduleName(nullable:false, blank:false, maxSize:80);
    moduleDescription(nullable:true, blank:true);
    course(nullable:false, blank:false);
    }


static mapping = {
    course column:'course_fk'
    moduleDescription column: 'module_description', type:'text'
  }


}
