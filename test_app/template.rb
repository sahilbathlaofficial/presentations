# template.rb
# generate(:scaffold, "person name:string")
# route "root to: 'people#index'"
# rake("db:migrate")
 
# git :init
# git add: "."
# git commit: %Q{ -m 'Initial commit' }

# if yes?("Would you like to install Devise?")
#   gem "devise"
#   generate "devise:install"
#   model_name = ask("What would you like the user model to be called? [user]")
#   model_name = "user" if model_name.blank?
#   generate "devise", model_name
# end

# environment 'config.action_mailer.default_url_options = {host: 'http://yourwebsite.example.com'}, env: 'production

# initializer 'bloatlol.rb', <<-CODE
#   class Object
#     def not_nil?
#       !nil?
#     end
 
#     def not_blank?
#       !blank?
#     end
#   end
# CODE