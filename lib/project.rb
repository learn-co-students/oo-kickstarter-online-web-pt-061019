class Project
  attr_accessor :backers
  attr_reader :title

  
  def initialize(title)
    @title = title 
    @backers = []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self  #in order to keep track of projects, call the backer on the backed_projects method
  end                               #in backer.rb and push its "self" to store the new value.
  
end