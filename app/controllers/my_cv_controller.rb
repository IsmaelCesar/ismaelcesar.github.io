class MyCvController < ApplicationController
  
  before_action :set_cv_data

  def index
  end

  # [GET] /cv
  # prints out the PDF version of my cv
  def curriculum_vitae
    respond_to do |format|
      format.pdf do
        render pdf: 'curriculum_vitae'
      end
    end
  end

  private 

  def set_cv_data
    @projects = Project.all
    @publications = Publication.all
    @languages = Language.all
    @formations = Formation.all
  end

end
