class ApplicationController < ActionController::Base
  before_action :set_current_user

  private

  def set_current_user
    puts "user id: #{session.fetch(:user_id)}"
    user_id = session.fetch(:user_id)

    @current_user = User.where({ :id => user_id }).at(0)
  end
end
