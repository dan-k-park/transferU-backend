class SchoolsController < ApplicationController
  skip_before_action :authorized
  
  def index
    schools = School.all
    render :json => schools
  end

  def show
    school = School.find(params[:id])
    render :json => school
  end

  def new
    school = School.new
  end

  def create
    school = School.new(school_params)
    school.save
    render :json => school
  end

  private

  def school_params
    params.require(:school).permit(:name, :location)
  end
end
