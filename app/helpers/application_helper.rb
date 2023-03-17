module ApplicationHelper
  def current_user
    user_id = session.fetch(:user_id)

    User.where({ :id => user_id }).at(0)
  end
end
