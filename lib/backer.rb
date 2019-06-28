class Backer
  attr_reader :name, :backed_projects

  def initialize (name)
    @name = name
    @backed_projects = []
  end

  def back_project(pro_obj)
    @backed_projects << pro_obj
    pro_obj.backers << self
  end
end
