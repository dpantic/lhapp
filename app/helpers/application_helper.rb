module ApplicationHelper

  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
<<<<<<< HEAD
end
=======
end
>>>>>>> 6f2a9d9b68c988ed496642a8770928cffa6476e5
