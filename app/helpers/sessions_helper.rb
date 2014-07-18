module SessionsHelper
  def sign_in(trainee)
    remember_token = Trainee.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    trainee.not_validates_password = true
    trainee.update_attributes! remember_token: Trainee.digest(remember_token)
    self.current_trainee = trainee

  end
 
  def signed_in?
    !current_trainee.nil?
  end
  def current_trainee=(trainee)
    @current_trainee = trainee
  end
  
  def current_trainee
    remember_token = Trainee.digest(cookies[:remember_token])
    @current_trainee ||= Trainee.find_by(remember_token: remember_token)
  end
  
  def sign_out
    current_trainee.update_attribute(:remember_token,
    Trainee.digest(Trainee.new_remember_token))
    cookies.delete(:remember_token)
    self.current_trainee = nil
  end
  
end
