modules = {
    application {
        resource url:'js/application.js'

    }

template {
        resource url:'js/application.js'
	resource url:[dir: 'css', file: 'css/reset.css', disposition: 'head'] 
        resource url:[dir: 'css', file: 'css/style.css', disposition: 'head'] 
	resource url:[dir: 'css', file: 'css/jquery.lightbox-0.5.css', disposition: 'head']
	resource url:[dir: 'css', file: 'forms.css', disposition: 'head'] 
    }





}
