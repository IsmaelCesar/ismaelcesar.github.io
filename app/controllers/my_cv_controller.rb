class MyCvController < ApplicationController
  def index
    @projects = Project.all
    @publications = Publication.all
    @languages = Language.all
  end
end
