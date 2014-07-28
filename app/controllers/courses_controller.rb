class CoursesController < ApplicationController
  before_action :signed_in_trainee
 
  def index
    @courses = Course.all
  end
  def show
    @course = Course.find params[:id]
    @course_subjects = @course.course_subjects
  end
end
