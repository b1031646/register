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


}

    def destroy = {
    }


	def lookupOrCreateInstructor (id,name){
	def result = Instructor.findByInstructorId(id) ?: new Instructor (instructorId: id, instructorName: name).save();
	return result
	}

	def lookupOrCreateCourse (id,name,description){
	def result = Course.findByCourseId(id) ?: new Course (courseId: id, courseName: name, courseDescription: description).save();
	return result
	}

	def lookupOrCreateStudent (id,name,notes){
	def result = Student.findByStudentId(id) ?: new Student (studentId: id, studentName: name, studentNotes: notes).save();
	return result
	}
}
