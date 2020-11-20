class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        name = ProjectBacker.new(self, backer)
    end

    def backers
        backed = ProjectBacker.all.collect do |backed| 
            if backed.project == self
                backed.backer
            end
        end
        backed.compact
    end
end