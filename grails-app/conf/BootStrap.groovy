import uk.ac.shu.webarch.register.*;

class BootStrap {

    def init = { servletContext ->
	
	


	// Add test instructors //

	def richard_instructor = lookupOrCreateInstructor('A1111', 'Richard Pitts', 'richard','Admin')
	def james_instructor = lookupOrCreateInstructor('A2222', 'James Duffy', 'james','Instructor')
	def steve_instructor = lookupOrCreateInstructor('A3333', 'Steve Holt', 'steve','Instructor')


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
	def mike_database_thursday = lookupOrCreateEnrollment(database_thursday,mike_student)

	// Sarah Enrollment //
	def sarah_database_thursday = lookupOrCreateEnrollment(database_thursday,sarah_student)
	def sarah_programming_monday = lookupOrCreateEnrollment(programming_monday,sarah_student)
	def sarah_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,sarah_student)

	// John Enrollment //
	def john_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,john_student)
	def john_database_thursday = lookupOrCreateEnrollment(database_thursday,john_student)


	// Add test RegistrationSheets //
	
	def programming_monday_regsheet = lookupOrCreateRegistrationSheet(programming_monday,'Monday 1st Feb','N/A')
	def programming_tuesday_regsheet = lookupOrCreateRegistrationSheet(programming_tuesday,'Tuesday 19th Apr','N/A')
	def database_thursday_regsheet = lookupOrCreateRegistrationSheet(database_thursday,'Thursday 23rd Mar','N/A')
	def webdesign_friday_regsheet = lookupOrCreateRegistrationSheet(webdesign_friday,'Friday 13th Jan', 'N/A')





}

    def destroy = {
    }

		// Instructor //

	def lookupOrCreateInstructor (id,name,password,role){
	def result = Instructor.findByInstructorId(id) ?: new Instructor (instructorId: id, instructorName: name, password: password, role: role).save();
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

	def lookupOrCreateRegistrationSheet (session,sheetname,notes){
	def result = RegistrationSheet.findAllBySessionAndSheetName(session, sheetname) ?: new RegistrationSheet (session: session, sheetName: sheetname, notes: notes).save();
	return result
	}

	


}
