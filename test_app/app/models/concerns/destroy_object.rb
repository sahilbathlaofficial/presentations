class DestroyObject
  def self.before_destroy(model)
    puts "before destruction...."
  end
end