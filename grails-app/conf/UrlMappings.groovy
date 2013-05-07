class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}


		// Mapping for homepage //

		"/"(controller:'instructor', action:"authenticate")


		// Mapping for session_detail //

		"/session/$id?/detail" (controller:'session', action:"session_detail")


		// Mapping for Course Controller //

		"/course/$id?/show" (controller:'course', action:"course_show")


		// Mapping for Course Controller //

		"/module/$id?/show" (controller:'module', action:"module_show")


		// Mapping for Active Sessions //

		"/activeSessions/" (controller:'session', action:"active")


		// Mapping for signing a registrationSheet //

		"/regSheet/$id?/sign" (controller:'registrationSheet', action:"register")



		"500"(view:'/error')
	}
}
