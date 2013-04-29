package uk.ac.shu.webarch.register

class ApplyController {

    def index(Long id) { 

 
        def registrationSheetInstance = RegistrationSheet.get(id)

        [registrationSheetInstance: registrationSheetInstance]

    }



	


	def processAttendance() {

def returnid = (params.id)

	if(request.method == 'GET') {

	def r = new RegisterEntry()

	r.properties['student.id', 'registrationsheet.id'] = params

	if(r.save()) {


	redirect(action: "index", id: returnid)


	} else {

	flash.message="Please enter a sheet name!" 

	redirect(action: "index", id: returnid)
	

	}
	}

}	




    def activeClasses() { 


  def crit = RegistrationSheet.createCriteria()
  def active_sheets = crit.list {
    isNotEmpty('registerEntries')
    }
  
  def result=[active_sheets:active_sheets]

  return result;



}
    






}
