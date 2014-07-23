class Supervisors::CoursesController < ApplicationController
  before_action :signed_in_trainee
  before_action :supervisor_trainee
  def show
    @course = Course.find params[:id]
    @course_subjects = @course.course_subjects
  end
end
