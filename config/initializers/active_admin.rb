ActiveAdmin.setup do |config|
  #if ActiveAdmin::VERSION == "0.3.4" && Rails.version == "3.2.0.rc2"
  #  class ActiveSupport::FileUpdateChecker
  #    def paths
  #      @files
  #    end
  #  end
  #else
  #  warn = "!! double check the ActiveSupport::FileUpdateChecker duck punch in #{__FILE__} !!"
  #  puts warn
  #end
  
  # == Site Title
  #
  # Set the title that is displayed on the main layout
  # for each of the active admin pages.
  #
  config.site_title = "GoldenCobra"

  # Set the link url for the title. For example, to take 
  # users to your main site. Defaults to no link.
  #
  # config.site_title_link = "/"

  # == Default Namespace
  #
  # Set the default namespace each administration resource
  # will be added to. 
  #
  # eg: 
  #   config.default_namespace = :hello_world
  #
  # This will create resources in the HelloWorld module and
  # will namespace routes to /hello_world/*
  #
  # To set no namespace by default, use:
  #   config.default_namespace = false
  #
  # Default:
  config.default_namespace = :admin

  # == User Authentication
  #
  # Active Admin will automatically call an authentication 
  # method in a before filter of all controller actions to 
  # ensure that there is a currently logged in admin user.
  #
  # This setting changes the method which Active Admin calls
  # within the controller.
  config.authentication_method = :authenticate_user!


  #Load Resourses from this Engine
  config.load_paths.delete_at(0)
  config.load_paths << "#{Goldencobra::Engine.root}/app/admin/"

  # == Current User
  #
  # Active Admin will associate actions with the current
  # user performing them.
  #
  # This setting changes the method which Active Admin calls
  # to return the currently logged in user.
  config.current_user_method = :current_user


  # == Logging Out
  #
  # Active Admin displays a logout link on each screen. These
  # settings configure the location and method used for the link.
  #
  # This setting changes the path where the link points to. If it's
  # a string, the strings is used as the path. If it's a Symbol, we
  # will call the method to return the path.
  #
  # Default:
  config.logout_link_path = :destroy_user_session_path

  # This setting changes the http method used when rendering the
  # link. For example :get, :delete, :put, etc..
  #
  # Default:
  # config.logout_link_method = :get


  # == Admin Comments
  #
  # Admin comments allow you to add comments to any model for admin use
  #
  # Admin comments are enabled by default in the default
  # namespace only. You can turn them on in a namesapce
  # by adding them to the comments array.
  #
  # Default:
  # config.allow_comments_in = [:admin]


  # == Controller Filters
  #
  # You can add before, after and around filters to all of your
  # Active Admin resources from here. 
  #
  # config.before_filter :do_something_awesome


  # == Register Stylesheets & Javascripts
  #
  # We recommend using the built in Active Admin layout and loading
  # up your own stylesheets / javascripts to customize the look
  # and feel.
  #
  # To load a stylesheet:
     config.register_stylesheet 'goldencobra/active_admin'
     #config.register_stylesheet 'goldencobra/jquery.fileupload-ui.css'
     #config.register_stylesheet 'goldencobra/ikusei_active_admin.css'
      
  # To load a javascript file:
     config.register_javascript 'goldencobra/active_admin.js' 
     #config.register_javascript 'goldencobra/application.js' 
     config.register_javascript "https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"
     config.register_javascript "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.16/jquery-ui.min.js"
     #config.register_javascript "goldencobra/jquery.ui.widget.js"
     #config.register_javascript "http://blueimp.github.com/JavaScript-Templates/tmpl.min.js"
     #config.register_javascript "http://blueimp.github.com/JavaScript-Load-Image/load-image.min.js"
     #config.register_javascript "http://twitter.github.com/bootstrap/1.4.0/bootstrap-modal.min.js"
     #config.register_javascript "http://blueimp.github.com/Bootstrap-Image-Gallery/bootstrap-image-gallery.min.js"
     #config.register_javascript "goldencobra/tiny_mce_popup.js"
     config.register_javascript "goldencobra/jquery.tinymce.js"
     #config.register_javascript "goldencobra/jquery.iframe-transport.js"
     #config.register_javascript "goldencobra/jquery.fileupload.js"
     #config.register_javascript "goldencobra/jquery.fileupload-ui.js"

end
