package uk.ac.shu.webarch.register

import org.springframework.dao.DataIntegrityViolationException

class InstructorController {




    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [instructorInstanceList: Instructor.list(params), instructorInstanceTotal: Instructor.count()]
    }

    def create() {
        [instructorInstance: new Instructor(params)]
    }

    def save() {
        def instructorInstance = new Instructor(params)
        if (!instructorInstance.save(flush: true)) {
            render(view: "create", model: [instructorInstance: instructorInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'instructor.label', default: 'Instructor'), instructorInstance.id])
        redirect(action: "show", id: instructorInstance.id)
    }

    def show(Long id) {
        def instructorInstance = Instructor.get(id)
        if (!instructorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructor.label', default: 'Instructor'), id])
            redirect(action: "list")
            return
        }

        [instructorInstance: instructorInstance]
    }

    def edit(Long id) {
        def instructorInstance = Instructor.get(id)
        if (!instructorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructor.label', default: 'Instructor'), id])
            redirect(action: "list")
            return
        }

        [instructorInstance: instructorInstance]
    }

    def update(Long id, Long version) {
        def instructorInstance = Instructor.get(id)
        if (!instructorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructor.label', default: 'Instructor'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (instructorInstance.version > version) {
                instructorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'instructor.label', default: 'Instructor')] as Object[],
                          "Another user has updated this Instructor while you were editing")
                render(view: "edit", model: [instructorInstance: instructorInstance])
                return
            }
        }

        instructorInstance.properties = params

        if (!instructorInstance.save(flush: true)) {
            render(view: "edit", model: [instructorInstance: instructorInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'instructor.label', default: 'Instructor'), instructorInstance.id])
        redirect(action: "show", id: instructorInstance.id)
    }

    def delete(Long id) {
        def instructorInstance = Instructor.get(id)
        if (!instructorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructor.label', default: 'Instructor'), id])
            redirect(action: "list")
            return
        }

        try {
            instructorInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'instructor.label', default: 'Instructor'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'instructor.label', default: 'Instructor'), id])
            redirect(action: "show", id: id)
        }
    }



		
// Login //

	def login(LoginCommand cmd) {
	if(request.method == 'POST') {
	if(!cmd.hasErrors()) {
	session.instructor = cmd.getInstructor()
	redirect(controller:'instructor', action:'authenticate')
	} else {
	render view:'/instructor/login', model:[loginCmd:cmd]
	}
	} else {
	render view:'/instructor/login'
	}
	}



	// Part of the login script that checks if both username and password exist and then retrieves the user //

	class LoginCommand {
	String instructorId 
	String password
	private u
	Instructor getInstructor() {
	if(!u && instructorId ) {
	u = Instructor.findByInstructorId (instructorId)
	}
	return u

	}

	static constraints = {
	instructorId  blank:false, validator:{ val, obj ->
	if(!obj.instructor)
	return "instructor.not.found"
	}
	password blank:false, validator:{ val, obj ->
	if(obj.instructor && obj.instructor.password != val)
	return "instructor.password.invalid"
	}
	}
	}


	// Logout //

	def logout = {
	session.invalidate()
	redirect(controller:'instructor', action:'login')
	}



def authenticate(){

if (session.instructor) {
redirect(controller:'home', action:'index')

}else {

redirect(controller:'instructor', action:'login')

}


}


	def my_account(){}




    def edit_details(Long id) {
        def instructorInstance = Instructor.get(id)
        if (!instructorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructor.label', default: 'Instructor'), id])
            redirect(controller: "instructor", action: "my_account")
            return
        }

        [instructorInstance: instructorInstance]
    }


    def instructor_update(Long id, Long version) {
        def instructorInstance = Instructor.get(id)
        if (!instructorInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'instructor.label', default: 'Instructor'), id])
            redirect(action: "my_account")
            return
        }

        if (version != null) {
            if (instructorInstance.version > version) {
                instructorInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'instructor.label', default: 'Instructor')] as Object[],
                          "Another user has updated this Instructor while you were editing")
                render(view: "edit_details", model: [instructorInstance: instructorInstance])
                return
            }
        }

        instructorInstance.properties = params

        if (!instructorInstance.save(flush: true)) {
            render(view: "edit_details", model: [instructorInstance: instructorInstance])
            return
        }

        flash.message="Your details have been updated!" 
        redirect(action: "edit_details", id: instructorInstance.id)
    }



def admin_area(){}





}
