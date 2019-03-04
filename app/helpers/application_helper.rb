module ApplicationHelper
  def current_user
    User.first
  end

  def alert_class type
    case type.to_s
    when "success"
      "alert-success"
    when "info"
      "alert-info"
    when "warning"
      "alert-warning"
    when "danger"
      "alert-dangder"
    else
      ""
    end
  end
end
