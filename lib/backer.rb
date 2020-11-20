class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        name = ProjectBacker.new(project, self)
    end
    
    def backed_projects
        backed = ProjectBacker.all.collect do |backed| 
            if backed.backer == self
                backed.project
            end
        end
        backed.compact
    end
end