module ApplicationHelper
  def generate_navbar
    if params["controller"] == "pages" && params["action"] == "home"
      return "home-navbar"
    else
      return "normal-navbar"
    end
  end
end
