class HelloMetalController < ActionController::Metal
  # include rendering
  # include ActionController::Rendering
  # append_view_path "#{Rails.root}/app/views/hello/"

  #include redirectional helpers
  include ActionController::Redirecting
  include Rails.application.routes.url_helpers

  #include UrlFor helper
  # include ActionController::UrlFor

  #include Flash
  include ActionController::Helpers
  include ActionController::Flash 

  #include StrongParameters
  include ActionController::StrongParameters

  include AbstractController::Callbacks

  before_filter :initiate

  def index
    # self.content_type = "application/xml"
    # self.response_body = "<a href= 'a'>Hello World!</a>"
    # self.status = 404

    #class methods
    # self.response_body = controller_name()

    #helpers
    # render 'index.html'
    # render '/index.html'

    # redirect_to root_path
    # self.redirect_to url_for(domain: 'google.com',subdomain: 'www',port:'80').sub('hello','')

    # flash.now[:hi] = "Saying Hello"
    # self.response_body = flash[:hi]


    # self.response_body = "<form method='post'><input type='text' name='name'/>" +
    #                     params.permit('name').to_s + "</input></form>"
  
    self.response_body = @text + "World"

  end

  def initiate
    @text = "Welcome \n"
  end
end