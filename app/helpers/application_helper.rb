module ApplicationHelper

  protected
  def side_bar_status
    if user_signed_in?
      current_user.email
    end
  end

  def side_bar_menu
    if user_signed_in?
      link_to "Log out", destroy_session_path(:user), method: :delete, class: "btn btn-danger"
    else
      link_to "Log in", new_session_path(:user), class: "btn btn-primary"
    end
  end

  def side_bar_menu2
    if !user_signed_in?
      link_to "Sign up", new_registration_path(:user), class: "btn btn-success"
    end
  end
end
