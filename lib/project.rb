require 'pry'
class Project
  attr_reader :name, :backers

  def initialize (name)
    @name = name
    @backers = []
  end

  def title
    @name
  end

  def add_backer(backer_obj)
    @backers << backer_obj
    backer_obj.backed_projects << self
  end
end
