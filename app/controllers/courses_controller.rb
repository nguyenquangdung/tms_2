class CoursesController < ApplicationController
  def show
    @course = Course.find params[:id]
    @course_subjects = @course.course_subjects
  end
end
