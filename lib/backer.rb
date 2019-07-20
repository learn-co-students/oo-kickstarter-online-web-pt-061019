class Backer
  attr_reader :name
  attr_accessor :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    @backed_projects << project
    #it adds a new porject to the backed_projects
    project.backers << self
    #it attaches the project to the backers in my class array
 end
end
