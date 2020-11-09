class Project
attr_reader :title
def initialize (title)
    @title = title
end
def add_backer(backer)
    ProjectBacker.new(self, backer)
end

def backers
    projectbackers=  ProjectBacker.all.select do |backers|
     backers.project == self
    end
    projectbackers.map do |backers|
        backers.backer
    end
end
end