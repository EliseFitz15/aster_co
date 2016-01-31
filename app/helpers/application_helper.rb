module ApplicationHelper

  def full_grid_row(&block)
    content_tag(:div, class: 'row') do
      content_tag(:div, class: 'columns large-12') do
        yield
      end
    end
  end
end
