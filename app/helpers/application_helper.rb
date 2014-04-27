module ApplicationHelper
  def title(title)
    title || params[:controller]
  end

  def header(h)
    h || ""
  end

end
