class Backer
attr_reader :name

def initialize(name)
    @name = name

end
def back_project(project)
    ProjectBacker.new(project, self)
end
def backed_projects
    backedprojects=  ProjectBacker.all.select do |projects|
     projects.backer == self
    end
    backedprojects.map do |projects|
        projects.project
    end
end
end