require_relative('concerns/destroy_object')

class Post < ActiveRecord::Base
  validates :content, length: { minimum: 2 }

  def before_save(model)
    puts "Dry running.."
  end

  #Callbacks in sequential order(create and update)
 
  before_validation "append_in_content('1')"
  after_validation "append_in_content('2')"
  before_save self.new
  around_save :around_content 
  around_create :around_content
  after_create "append_in_content('7')"
  after_save { |post| post.append_in_content('8') }

  ###############Destroying object####################################

  # before_destroy "destroying_object('before')"
  # around_destroy :destroying_object
  # after_destroy  "destroying_object('after')"

  ###################after_initialize and after_find####################

  #  after_initialize do |user|
  #   puts "You have initialized an object!"
  # end
 
  # after_find do |user|
  #   puts "You have found an object!"
  # end
 
 ##################conditions##########################################

  #before_destroy "destroying_object('before')", :if => 'true' , :unless => 'true'

  ###############Custom Classes ########################################

  #before_destroy DestroyObject.new
  #before_destroy DestroyObject

  ###############Observers########################################

  ##############Transactional Callbacks##########################

  #after_commit :do_foo, :on => :update
  #after_rollback :do_foo, :on => :create

  # after_commit :on => :create do
  #   puts "yo"
  # end

  protected

  def append_in_content(value)
    self.content += value

  end

  def around_content
    self.content += '$'
    yield
  end

  def destroying_object(value = 'around')
    puts value
  end

  def content_contains_slang?
    self.content.downcase.include?('ass')
  end

  def do_foo
      puts "transaction complete!!"
  end
  
end

