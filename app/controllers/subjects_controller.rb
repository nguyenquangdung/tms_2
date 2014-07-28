class SubjectsController < ApplicationController
  before_action :signed_in_trainee
  before_action :supervisor_trainee
  def show
    @subject = Subject.find params[:id]
    @subject_tasks = @subject.subject_tasks
  end
end
