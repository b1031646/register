import uk.ac.shu.webarch.register.*;

class BootStrap {

    def init = { servletContext ->
	
	println('BootStrap::init');


	// Add test instructors //

	def richard_instructor = lookupOrCreateInstructor('1', 'Richard Pitts')
	def james_instructor = lookupOrCreateInstructor('2', 'James Duffy')
	def steve_instructor = lookupOrCreateInstructor('3', 'Steve Holt')


	// Add test courses //

	def computing_course = lookupOrCreateCourse('1','Computing','Business Computing' )
	def maths_course = lookupOrCreateCourse('2','Maths','Maths for Beginners' )
	def business_course = lookupOrCreateCourse('3','Business','Business Basics' )


	// Add test students //
	
	def mike_student = lookupOrCreateStudent('1','Mike Osbourne', 'N/A')
	def sarah_student = lookupOrCreateStudent('2','Sarah Stead','On Report')
	def john_student = lookupOrCreateStudent('3','John Turner','N/A')

		
	// Add test modules //
	
	def programming_module = lookupOrCreateModule('1','Programming', 'Programming', computing_course)
	def database_module = lookupOrCreateModule('2','Database Systems','Oracle SQL', computing_course)
	def webdesign_module = lookupOrCreateModule('3','Web Design','HTML & CSS', computing_course)

	
	// Add test sessions //
	
	def programming_monday = lookupOrCreateSession('1','Programming-Monday',richard_instructor, programming_module)
	def programming_tuesday = lookupOrCreateSession('2','Programming-Tuesday',richard_instructor, programming_module)
	def database_thursday = lookupOrCreateSession('3','Database-Thursday',james_instructor, database_module)
	def webdesign_friday = lookupOrCreateSession('4','Web Design-Friday', steve_instructor, webdesign_module)
	

	// Add test enrollment //

	// Mike Enrollment //
	def mike_programming_monday = lookupOrCreateEnrollment(programming_monday,mike_student)
	def mike_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,mike_student)

	// Sarah Enrollment //
	def sarah_database_thursday = lookupOrCreateEnrollment(database_thursday,sarah_student)
	def sarah_programming_monday = lookupOrCreateEnrollment(programming_monday,sarah_student)
	def sarah_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,sarah_student)

	// John Enrollment //
	def john_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,john_student)


	// Add test RegistrationSheets //
	
	def programming_monday_regsheet = lookupOrCreateRegistrationSheet(programming_monday,'2013/01/01','N/A')
	def programming_tuesday_regsheet = lookupOrCreateRegistrationSheet(programming_tuesday,'2013/02/01','N/A')
	def database_thursday_regsheet = lookupOrCreateRegistrationSheet(database_thursday,'2013/03/01','N/A')
	def webdesign_friday_regsheet = lookupOrCreateRegistrationSheet(webdesign_friday,'2013/04/01', 'N/A')


}

    def destroy = {
    }

		// Instructor //

	def lookupOrCreateInstructor (id,name){
	def result = Instructor.findByInstructorId(id) ?: new Instructor (instructorId: id, instructorName: name).save();
	return result
	}

		// Course //

	def lookupOrCreateCourse (id,name,description){
	def result = Course.findByCourseId(id) ?: new Course (courseId: id, courseName: name, courseDescription: description).save();
	return result
	}

		// Student //

	def lookupOrCreateStudent (id,name,notes){
	def result = Student.findByStudentId(id) ?: new Student (studentId: id, studentName: name, studentNotes: notes).save();
	return result
	}

		// Module //

	def lookupOrCreateModule (id,name,description,course){
	def result = Module.findByModuleId(id) ?: new Module (moduleId: id, moduleName: name, moduleDescription: description, course: course).save();
	return result
	}

		// Session //

	def lookupOrCreateSession (id,name,instructor,module){
	def result = Session.findBySessionId(id) ?: new Session (sessionId: id, sessionName: name, instructor: instructor, module: module).save();
	return result
	}

		// Enrollment //

	def lookupOrCreateEnrollment (session,student){
	def result = Enrollment.findAllBySessionAndStudent(session, student) ?: new Enrollment (session: session, student: student).save();
	return result
	}

		// RegistrationSheet //

	def lookupOrCreateRegistrationSheet (session,date,notes){
	def result = RegistrationSheet.findAllBySessionAndSessionDate(session, date) ?: new RegistrationSheet (session: session, sessionDate: date, notes: notes).save();
	return result
	}

}
