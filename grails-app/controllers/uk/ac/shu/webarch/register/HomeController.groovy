package uk.ac.shu.webarch.register

class HomeController {

// Before Interceptor that restricts access to Admin users only //

def beforeInterceptor = [action:this.&auth, 
                           except:["index"]]

  def auth() {
    if( !(session?.instructor) ){
      flash.message = "You must be logged in to perform that task."
      redirect(controller:'instructor', action:'login')
      return false
    }
  }


	// Code to retrieve the modules assigned to the instructor who is logged in and display them on the homepage //


    def index() {

def result = [sessionlist:Session.findAllByInstructor(session.instructor)]
result.total = 0
result.sessionlist.each  { sessionentry ->


}

  result


}









}
