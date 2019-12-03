class StudyController < ApplicationController
  def index
    @study = Study.new
    @study = Study.all.sum(:time)
  end

  def create
    Study.create(study_params)
    # @study = Study.new(study_params)
    # @study.save
    redirect_to action: 'index'
  end

  private 

  def study_params
    params.permit(:time, :date)
  end
end
