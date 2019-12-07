class StudyController < ApplicationController
  def index
    @study = Study.new
    @studies = Study.all.sum(:time)
  end

  def create
    Study.create(study_params)
    # @study = Study.new(study_params)
    # @study.save
    redirect_to action: 'index'
  end

  private 

  def study_params
    params.require(:study).permit(:time, :date)
  end
end
