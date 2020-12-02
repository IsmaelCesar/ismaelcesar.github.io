class MyCvController < ApplicationController
  def index
    @projects = Project.all
    @publications = Publication.all
    @languages = Language.all
    @formations = Formation.all
  end
end
