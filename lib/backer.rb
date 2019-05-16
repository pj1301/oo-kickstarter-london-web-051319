require_relative "project.rb"

class Backer
   
   @@all = []

   attr_reader :name
   attr_accessor :backed_projects

   def initialize(name)
      @name = name
      @backed_projects = []
      @@all<< self
   end

   def back_project(project)
      @backed_projects << project
      # backer = self
      # self = Project.add_backer(backer)
      # @backers<< backer1
      project.backers<< self
   end

end