import uk.ac.shu.webarch.register.*;

class BootStrap {

    def init = { servletContext ->
	
	


	// Add test instructors //

	def richard_instructor = lookupOrCreateInstructor('A1111', 'Richard Pitts', 'richard','Admin')
	def james_instructor = lookupOrCreateInstructor('A2222', 'James Duffy', 'james','Instructor')
	


	// Add test courses //

	def computing_course = lookupOrCreateCourse('1','Computing','Business Computing' )
	def maths_course = lookupOrCreateCourse('2','Maths','Maths for Beginners' )
	def business_course = lookupOrCreateCourse('3','Business','Business Basics' )


	// Add test students //
	
	def mike_student = lookupOrCreateStudent('1','Mike Osbourne', 'N/A')
	def sarah_student = lookupOrCreateStudent('2','Sarah Stead','On Report')
	def john_student = lookupOrCreateStudent('3','John Turner','N/A')
	def paul_student = lookupOrCreateStudent('4','Paul Smith','N/A')
	def anne_student = lookupOrCreateStudent('5','Anne Walker','N/A')
	def rob_student = lookupOrCreateStudent('6','Rob Green','N/A')
	def james_student = lookupOrCreateStudent('7','James Fairclough','N/A')
	def georgina_student = lookupOrCreateStudent('8','Georgina Atwell','N/A')
	def alison_student = lookupOrCreateStudent('9','Alison Stuart','N/A')
	def sven_student = lookupOrCreateStudent('6','Sven Vath','N/A')

		
	// Add test modules //
	
	def programming_module = lookupOrCreateModule('1','Programming', 'Programming', computing_course)
	def database_module = lookupOrCreateModule('2','Database Systems','Oracle SQL', computing_course)
	def webdesign_module = lookupOrCreateModule('3','Web Design','HTML & CSS', computing_course)

	
	// Add test sessions //
	
	def programming_monday = lookupOrCreateSession('1','Programming-Monday',richard_instructor, programming_module)
	def programming_tuesday = lookupOrCreateSession('2','Programming-Tuesday',richard_instructor, programming_module)
	def database_thursday = lookupOrCreateSession('3','Database-Thursday',james_instructor, database_module)
	def webdesign_friday = lookupOrCreateSession('4','WebDesign-Friday',james_instructor,webdesign_module)
	def webdesign_wednesday = lookupOrCreateSession('5','WebDesign-Wednesday',james_instructor,webdesign_module)
	def database_monday = lookupOrCreateSession('6','Database-Monday',james_instructor, database_module)
	


	// Add test enrollment //

	// Mike Enrollment //
	def mike_programming_monday = lookupOrCreateEnrollment(programming_monday,mike_student)
	def mike_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,mike_student)
	def mike_database_thursday = lookupOrCreateEnrollment(database_thursday,mike_student)

	// Sarah Enrollment //
	def sarah_database_thursday = lookupOrCreateEnrollment(database_thursday,sarah_student)
	def sarah_programming_monday = lookupOrCreateEnrollment(programming_tuesday,sarah_student)
	def sarah_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,sarah_student)

	// John Enrollment //
	def john_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,john_student)
	def john_database_thursday = lookupOrCreateEnrollment(database_thursday,john_student)

	// Paul Enrollment //
	def paul_database_thursday = lookupOrCreateEnrollment(database_thursday,paul_student)
	def paul_programming_monday = lookupOrCreateEnrollment(programming_monday,paul_student)
	def paul_webdesign_friday = lookupOrCreateEnrollment(webdesign_wednesday,paul_student)

	// Anne Enrollment //
	def Anne_database_thursday = lookupOrCreateEnrollment(database_monday,anne_student)
	def Anne_programming_monday = lookupOrCreateEnrollment(programming_tuesday,anne_student)
	def Anne_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,anne_student)

	// Rob Enrollment //
	def Rob_database_thursday = lookupOrCreateEnrollment(database_monday,rob_student)
	def Rob_programming_monday = lookupOrCreateEnrollment(programming_monday,rob_student)
	def Rob_webdesign_friday = lookupOrCreateEnrollment(webdesign_wednesday,rob_student)

	// James Enrollment //
	def James_database_thursday = lookupOrCreateEnrollment(database_thursday,james_student)
	def James_programming_monday = lookupOrCreateEnrollment(programming_monday,james_student)
	def James_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,james_student)

	// Georgina Enrollment //
	def Georgina_database_thursday = lookupOrCreateEnrollment(database_monday,georgina_student)
	def Georgina_programming_monday = lookupOrCreateEnrollment(programming_tuesday,georgina_student)
	def Georgina_webdesign_friday = lookupOrCreateEnrollment(webdesign_wednesday,georgina_student)

	// Alison Enrollment //
	def Alison_database_thursday = lookupOrCreateEnrollment(database_monday,alison_student)
	def Alison_programming_monday = lookupOrCreateEnrollment(programming_monday,alison_student)
	def Alison_webdesign_friday = lookupOrCreateEnrollment(webdesign_friday,alison_student)

	// Sven Enrollment //
	def Sven_database_thursday = lookupOrCreateEnrollment(database_thursday,sven_student)
	def Sven_programming_monday = lookupOrCreateEnrollment(programming_tuesday,sven_student)
	def Sven_webdesign_friday = lookupOrCreateEnrollment(webdesign_wednesday,sven_student)



	// Add test RegistrationSheets //
	
	def programming_monday_regsheet = lookupOrCreateRegistrationSheet(programming_monday,'Monday 1st Feb','N/A')
	def programming_tuesday_regsheet = lookupOrCreateRegistrationSheet(programming_tuesday,'Tuesday 19th Apr','N/A')
	def database_thursday_regsheet = lookupOrCreateRegistrationSheet(database_thursday,'Thursday 23rd Mar','N/A')
	def webdesign_friday_regsheet = lookupOrCreateRegistrationSheet(webdesign_friday,'Friday 13th Jan', 'N/A')
	def webdesign_wednesday_regsheet = lookupOrCreateRegistrationSheet(webdesign_wednesday,'Wednesday 21st Sep', 'N/A')
	def database_monday_regsheet = lookupOrCreateRegistrationSheet(database_monday,'Monday 11th May', 'N/A')



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
