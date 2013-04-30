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

		"/registrationSheet/" (controller:'apply', action:"index")

		// Mapping for Session Controller //

		"/session/" (controller:'session', action:"session_show")

		"500"(view:'/error')
	}
}
