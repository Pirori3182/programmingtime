class StudyController < ApplicationController
  def index
    @study = Study.new
    @study = Study.all.sum(:time)
  end

  def create
    @study = @study.times.new(study_params)
    @study.save
    redirect_to action: 'index'
  end

  private 

  def study_params
    params.perimt(:time, :date)
  end
end
