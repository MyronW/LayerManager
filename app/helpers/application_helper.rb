module ApplicationHelper
  def title(title)
    title || params[:controller]
  end
end
