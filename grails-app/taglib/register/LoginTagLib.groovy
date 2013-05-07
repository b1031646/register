package register

class LoginTagLib {

 def loginControl = {
    if(session?.instructor){
      out << "Hello ${session.instructor.instructorName}   >>"
      out << """ ${link(action:"logout", controller:"instructor"){"Logout"}}   """ 


		  if (session?.instructor.role == "Admin"){
	out<< """   /  ${link(action:"my_account", controller:"instructor"){"My Account"}}    """
	out << """   /  ${link(action:"showcart", controller:"cart"){"Admin Area"}}   """  

    } else if (session?.instructor.role == "Instructor") { 
      out << """   /  ${link(action:"my_account", controller:"instructor") {"My Account"}}"""
	  
    }
	

    } else {
      out << """${link(action:"login", controller:"instructor"){"Login/Register"}}"""      
    }
  }



}







