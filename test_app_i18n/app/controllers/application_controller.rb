class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :set_locale
 
def set_locale
  I18n.locale = params[:locale] || I18n.default_locale
end

private

# def set_locale
#   I18n.locale = extract_locale_from_tld || I18n.default_locale
# end

# def extract_locale_from_tld
#   parsed_locale = request.host.split('.').last
#   I18n.available_locales.include?(parsed_locale.to_sym) ? parsed_locale  : nil
# end


def default_url_options(options={})
	# Rails.application.routes.default_url_options[:host] = 'localhost:3000'
# logger.debug "default_url_options is passed options: #{options.inspect}\n"
  # { host: 'application.pl', locale: I18n.locale }
  {locale: I18n.locale}
end

end
