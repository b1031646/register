class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		// Mapping for homepage //

		"/"(controller:'instructor', action:"authenticate")



		"500"(view:'/error')
	}
}
