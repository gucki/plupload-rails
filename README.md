Rails Integration for Plupload
==

This gem integrates [Plupload](http://www.plupload.com/) with Rails. It's been tested with Rails 3.1, 3.2 and 4.0.


Install
--

Just add it got your Gemfile:

```ruby
gem 'plupload-rails'
```

Quick Start
--

Add to your application.js:

    //= require moxie
    //= require plupload.dev

    // optional, only needed if you'd like to use plupload localized
    //= require plupload/i18n/de

    // optional, but recommended. it sets generic settings like flash url, etc.
    //= require plupload.settings

    // optional, only if you want to use the jquery integration
    //= require jquery.plupload.queue


Add to your application stylesheet:

    //= require jquery.plupload.queue


Simple example Haml for your views:

```haml
div#uploader
:javascript
  $(function(){
    $("#uploader").pluploadQueue({
      runtimes: 'gears,flash,silverlight,browserplus,html5',
      url: '#{images_path}',
      multipart_params: {
        '#{request_forgery_protection_token}': '#{form_authenticity_token}',
        '#{Rails.application.config.session_options[:key]}': '#{request.session_options[:id]}'
      }
    });
  });
```

And the same in ERB:

```erb
<script>
  $(function(){
    $("#uploader").pluploadQueue({
      runtimes: 'html5,flash,silverlight',
      url: '<%= sink_hole_path %>',
      multipart_params: {
        '<%= request_forgery_protection_token %>': '<%= form_authenticity_token %>',
        '<%= Rails.application.config.session_options[:key] %>': '<%= request.session_options[:id] %>'
      }
    });
  });
</script>
```

Updating
--
When new versions of Plupload are released, simply update the gem to the latest version. When you notice that there's no gem for the latest plupload, please contact me (or even better, create an issue/ pull request).


License
--

Dual licensed under the [GPLv2 license](GPL-LICENSE.txt) and the [MIT license](MIT-LICENSE.txt). Plupload itself (including the JS, CSS, images, the Silverlight and Flash components) is licensed under GPLv2, unless you have acquired a [commercial license](http://plupload.com/license.php).

Copyright © 2011-2013 [Corin Langosch](http://www.corinlangosch.com) and contributors
