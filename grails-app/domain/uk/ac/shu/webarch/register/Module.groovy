package uk.ac.shu.webarch.register

class Module {

  String moduleId
  String moduleName
  String moduleDescription
  Course course

	// Here i implement a "toString()" method to return a more sensible value instead of the id for display purposes // 

	String toString() {
        return moduleName
    }
// A module has a set of sesisons associated with it //

  Set sessions

// A module has many sessions of type Session //

  static hasMany = [sessions: Session]

// Mapped by the module attribute //

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
