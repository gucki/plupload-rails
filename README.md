Rails 3.1 Integration for Plupload
==

This gem integrates [Plupload](http://www.plupload.com/) with the Rails 3.1 asset pipeline.


Install
--

Just add it got your Gemfile:

  gem plupload-rails


Quick Start
--

Add to your application.js:

    //= require plupload
    //= require plupload.settings     # optional, but recommended. it sets generic settings like flash url, etc.
    //= require jquery.plupload.queue # optional, only if you want to use the jquery integration
    //= require plupload.flash        # optional, only needed if you want to use this runtime
    //= require plupload.silverlight  # optional, only needed if you want to use this runtime
    //= require plupload.html4        # optional, only needed if you want to use this runtime
    //= require plupload.html5        # optional, only needed if you want to use this runtime
    //= require plupload.gears        # optional, only needed if you want to use this runtime
    //= require plupload.browserplus  # optional, only needed if you want to use this runtime


Add to your application.scss:
    @import "jquery.plupload.queue";


Simple example haml for your viwws:

    div#uploader
    javascript:
      $(function(){
        $("#uploader").pluploadQueue({
          runtimes: 'gears,flash,silverlight,browserplus,html5',
          url: '#{images_path}',
          multipart_params: {
            '#{{request_forgery_protection_token}}': '#{{form_authenticity_token}}',
            '#{{request.session_options[:key]}}': '#{{request.session_options[:id]}}'
          }
        });
      });


Updating
--
When new versions of Plupload are released, simply update the gem to the latest version. When you notice that there's no gem for the latest plupload, please contact me (or even better, create an issue/ pull request).

