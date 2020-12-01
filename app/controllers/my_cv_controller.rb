class MyCvController < ApplicationController
  def index
    @projects = Project.all
    @publication = Publication.all
    @languages = Language.all
  end
end
