module ApplicationHelper
  def title(given_title)
    page_title = given_title || params[:controller]
    "Layer Manager: #{page_title}"
  end

  def header(h)
    h || ""
  end

end
