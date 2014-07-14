class TraineesController < ApplicationController
  def new
  end

  def show
    @trainee = Trainee.find(params[:id])
  end

  def edit
  end

  def create
    @trainee = Trainee.new
    if @trainee.save
      sign_in @trainee
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @trainee
    else
      render 'new'
    end
  end

  def update
  end

  def destroy
  end
end
