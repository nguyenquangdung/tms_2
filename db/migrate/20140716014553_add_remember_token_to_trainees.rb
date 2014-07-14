class AddRememberTokenToTrainees < ActiveRecord::Migration
  def change
    add_column :trainees, :remember_token, :string
    add_index  :trainees, :remember_token
  end
end
