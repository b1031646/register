package uk.ac.shu.webarch.register

class HomeController {

def beforeInterceptor = [action:this.&auth, 
                           except:[]]

  def auth() {
    if( !(session?.instructor) ){
      flash.message = "You must be logged in to perform that task."
      redirect(controller:'instructor', action:'login')
      return false
    }
  }


    def index() {



def result = [sessionlist:Session.findAllByInstructor(session.instructor)]
result.total = 0
result.sessionlist.each  { sessionentry ->


}

  result


}









}
