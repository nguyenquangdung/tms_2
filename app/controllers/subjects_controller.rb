class SubjectsController < ApplicationController
  def show
    @subject = Subject.find params[:id]
    @subject_tasks = @subject.subject_tasks
  end
end
