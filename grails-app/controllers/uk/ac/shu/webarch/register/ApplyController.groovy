package uk.ac.shu.webarch.register

import grails.converters.*


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

 	 def result=[:]

	   result.active_sheets=[]


  def crit = RegistrationSheet.createCriteria()
  def active_sheets = crit.list {
    isNotEmpty('registerEntries')

    }


  active_sheets.each { rs ->
	result.active_sheets.add([session:rs.session,sheetName:rs.sheetName])

}


      withFormat {
	html result
	xml { render result as XML }
	json { render result as JSON }

     }



}
    






}
