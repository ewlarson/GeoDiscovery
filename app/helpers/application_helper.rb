module ApplicationHelper
  def render_html_value(args)
    simple_format(Array(args[:value]).flatten.join(' '))
  end
end
