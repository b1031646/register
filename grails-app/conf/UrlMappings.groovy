class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		// Mapping for homepage //

		"/"(controller:'instructor', action:"authenticate")

		// Mapping for Apply Controller //

		"/view_registrationSheet/" (controller:'apply', action:"index")

		// Mapping for session_detail //

		"/session_detail/" (controller:'session', action:"session_detail")

		// Mapping for Course Controller //

		"/course/" (controller:'course', action:"course_show")

		// Mapping for Course Controller //

		"/module/" (controller:'module', action:"module_show")


		"500"(view:'/error')
	}
}
