module ApplicationHelper
  def render_stars(grade)
    filled_stars = grade.floor
    half_star = (grade - filled_stars).round(1) >= 0.5

    full_star_html = '<i class="fa-solid fa-star fa-lg"></i>'
    half_star_html = '<i class="fa-solid fa-star-half-stroke fa-lg"></i>'
    empty_star_html = '<i class="fa-regular fa-star fa-lg"></i>'

    stars_html = (full_star_html * filled_stars)
    stars_html += half_star ? half_star_html : ''
    stars_html += empty_star_html * (5 - filled_stars - (half_star ? 1 : 0))

    raw stars_html
  end
end
