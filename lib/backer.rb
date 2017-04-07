# When a backer has added a project to its list of backed projects, that project should also add the backer to its list of backers.

class Backer
  attr_accessor :backed_projects
  attr_reader :name

  def initialize (name)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    self.backed_projects << project
    project.backers << self
  end
end
