package register

class LoginTagLib {

 def loginControl = {
    if(session?.instructor){
      out << "Hello ${session.instructor.instructorName}   >>"
      out << """ ${link(action:"logout", controller:"instructor"){"Logout"}}   """ 


    } else {
      out << """${link(action:"login", controller:"instructor"){"Login/Register"}}"""      
    }
  }



}







